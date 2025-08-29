// Flutter Isolates & Concurrency — Full Demo App
// ------------------------------------------------
// What you'll learn in this single-file app:
// 1) compute() for one-off CPU-bound work (large JSON parsing)
// 2) Isolate.spawn(...) for custom workers (heavy summation with progress)
// 3) A long‑lived, bidirectional worker isolate you can send tasks to repeatedly
// ------------------------------------------------
// How to run:
//   - Create a new Flutter project:  flutter create isolates_demo
//   - Replace lib/main.dart with this file's content
//   - pubspec.yaml: no extra dependencies required
//   - Run: flutter run

import 'dart:async';
import 'dart:convert';
import 'dart:isolate';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Isolates Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const IsolatesHomePage(),
    );
  }
}

class IsolatesHomePage extends StatefulWidget {
  const IsolatesHomePage({super.key});

  @override
  State<IsolatesHomePage> createState() => _IsolatesHomePageState();
}

class _IsolatesHomePageState extends State<IsolatesHomePage> {
  // UI state
  String _log = '';
  bool _busy = false;
  double _progress = 0.0; // 0..1 for the heavy sum with progress

  // Long‑lived worker isolate
  BidirectionalWorker? _worker;

  void _appendLog(String msg) {
    setState(() => _log = '[${DateTime.now().toIso8601String()}] $msg\n$_log');
  }

  @override
  void dispose() {
    _worker?.dispose();
    super.dispose();
  }

  // ------------------------------
  // 1) compute(): parse a large JSON
  // ------------------------------
  Future<void> _parseLargeJsonWithCompute() async {
    setState(() {
      _busy = true;
      _progress = 0;
    });

    _appendLog('Preparing large JSON payload...');

    // Build a large JSON string (simulate a big payload)
    final list = List.generate(100000, (i) => {
      'id': i,
      'name': 'Item #$i',
      'value': i * i,
    });
    final jsonString = jsonEncode(list);

    _appendLog('Parsing JSON on a background isolate using compute(...)');

    final stopwatch = Stopwatch()..start();
    final parsed = await compute(parseJsonTopLevel, jsonString);
    stopwatch.stop();

    _appendLog('Parsed ${parsed.length} items in ${stopwatch.elapsedMilliseconds} ms (UI stayed responsive).');

    setState(() => _busy = false);
  }

  // ------------------------------
  // 2) Custom Isolate: heavy sum with progress updates
  // ------------------------------
  Future<void> _runHeavySumWithProgress() async {
    setState(() {
      _busy = true;
      _progress = 0;
    });

    _appendLog('Spawning isolate for heavy summation with progress...');

    final receivePort = ReceivePort();
    final errorPort = ReceivePort();
    final exitPort = ReceivePort();

    final isolate = await Isolate.spawn<_SumIsolateConfig>(
      _sumIsolateEntry,
      _SumIsolateConfig(
        sendPort: receivePort.sendPort,
        maxN: 800000000, // 8e8 iterations — adjust as needed on slower machines
        progressInterval: 20000000, // send progress every N iterations
      ),
      onError: errorPort.sendPort,
      onExit: exitPort.sendPort,
      // debugName: 'heavy_sum', // (optional) available on newer SDKs
    );

    final completer = Completer<int>();

    StreamSubscription? sub;
    StreamSubscription? errSub;
    StreamSubscription? exitSub;

    sub = receivePort.listen((message) {
      if (message is _SumProgress) {
        setState(() => _progress = message.fraction);
      } else if (message is _SumDone) {
        _appendLog('Sum result: ${message.result}');
        completer.complete(message.result);
      }
    });

    errSub = errorPort.listen((e) {
      _appendLog('ERROR from isolate: $e');
      if (!completer.isCompleted) completer.completeError(e.toString());
    });

    exitSub = exitPort.listen((_) {
      _appendLog('Isolate exited.');
    });

    try {
      final result = await completer.future;
      _appendLog('Heavy sum complete. Result length: ${result.toString().length} digits');
    } catch (e) {
      _appendLog('Heavy sum failed: $e');
    } finally {
      receivePort.close();
      errorPort.close();
      exitPort.close();
      isolate.kill(priority: Isolate.immediate);
      setState(() {
        _busy = false;
        _progress = 0.0;
      });
    }
  }

  // ------------------------------
  // 3) Long‑lived bidirectional worker isolate
  // ------------------------------
  Future<void> _ensureWorker() async {
    _worker ??= await BidirectionalWorker.spawn();
  }

  Future<void> _sendWorkToWorker() async {
    await _ensureWorker();
    setState(() => _busy = true);

    _appendLog('Sending tasks to long‑lived worker...');

    // Send several tasks and await their results (worker doubles the input)
    final futures = [5, 12, 1234, 777777]
        .map((n) => _worker!.calculate(n))
        .toList();

    final results = await Future.wait(futures);

    _appendLog('Worker results: ${results.join(', ')}');
    setState(() => _busy = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Isolates & Concurrency'),
        actions: [
          IconButton(
            onPressed: () => setState(() => _log = ''),
            icon: const Icon(Icons.clear_all),
            tooltip: 'Clear log',
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Demos',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            _DemoButton(
              label: 'Parse Large JSON (compute)',
              subtitle: 'One‑off CPU task on a helper isolate',
              onPressed: _busy ? null : _parseLargeJsonWithCompute,
            ),
            const SizedBox(height: 8),
            _DemoButton(
              label: 'Heavy Sum with Progress (spawn)',
              subtitle: 'Custom isolate with progress messages',
              onPressed: _busy ? null : _runHeavySumWithProgress,
            ),
            if (_busy && _progress > 0)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: LinearProgressIndicator(value: _progress),
              ),
            const SizedBox(height: 8),
            _DemoButton(
              label: 'Long‑lived Worker (bidirectional)',
              subtitle: 'Send multiple tasks, reuse isolate',
              onPressed: _busy ? null : _sendWorkToWorker,
            ),
            const SizedBox(height: 16),
            const Text(
              'Log',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: SingleChildScrollView(
                    reverse: true,
                    child: Text(
                      _log,
                      style: const TextStyle(fontFamily: 'monospace'),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: _busy
          ? const FloatingActionButton.small(
        onPressed: null,
        child: CircularProgressIndicator(strokeWidth: 3),
      )
          : null,
    );
  }
}

// ============================================================
// compute() target — MUST be a top‑level or static function.
// It receives a JSON string and returns a decoded List.
// ============================================================
List<dynamic> parseJsonTopLevel(String jsonString) {
  return jsonDecode(jsonString) as List<dynamic>;
}

// ============================================================
// Custom isolate entry for heavy summation with progress updates.
// Sends _SumProgress (0..1) messages periodically and a final _SumDone.
// ============================================================
class _SumIsolateConfig {
  final SendPort sendPort;
  final int maxN;
  final int progressInterval;
  const _SumIsolateConfig({
    required this.sendPort,
    required this.maxN,
    required this.progressInterval,
  });
}

class _SumProgress {
  final double fraction; // 0..1
  const _SumProgress(this.fraction);
}

class _SumDone {
  final int result;
  const _SumDone(this.result);
}

void _sumIsolateEntry(_SumIsolateConfig cfg) {
  int sum = 0;
  for (int i = 0; i <= cfg.maxN; i++) {
    sum += i;
    if (i % cfg.progressInterval == 0) {
      final fraction = i / cfg.maxN;
      cfg.sendPort.send(_SumProgress(fraction));
    }
  }
  cfg.sendPort.send(_SumDone(sum));
}

// ============================================================
// Long‑lived bidirectional worker isolate
//   - Main isolate spawns worker
//   - Worker sends back its own SendPort
//   - Main keeps that port and can send multiple requests
//   - Each request includes a replyPort to receive the response
// Here the worker just doubles the input after simulating heavy work.
// ============================================================
class BidirectionalWorker {
  final Isolate _isolate;
  final SendPort _workerSendPort;

  BidirectionalWorker._(this._isolate, this._workerSendPort);

  static Future<BidirectionalWorker> spawn() async {
    final readyPort = ReceivePort();
    final isolate = await Isolate.spawn<_WorkerInit>(
      _workerEntry,
      _WorkerInit(readyPort.sendPort),
    );
    // First message from worker is its SendPort
    final workerSendPort = await readyPort.first as SendPort;
    readyPort.close();
    return BidirectionalWorker._(isolate, workerSendPort);
  }

  Future<int> calculate(int input) async {
    final rp = ReceivePort();
    _workerSendPort.send(_WorkerMessage(input: input, replyTo: rp.sendPort));
    final result = await rp.first as int;
    rp.close();
    return result;
  }

  void dispose() {
    _isolate.kill(priority: Isolate.immediate);
  }
}

class _WorkerInit {
  final SendPort mainSendPort;
  const _WorkerInit(this.mainSendPort);
}

class _WorkerMessage {
  final int input;
  final SendPort replyTo;
  const _WorkerMessage({required this.input, required this.replyTo});
}

void _workerEntry(_WorkerInit init) {
  final workerReceive = ReceivePort();

  // Send our SendPort to main, so it can send tasks to us
  init.mainSendPort.send(workerReceive.sendPort);

  workerReceive.listen((message) async {
    if (message is _WorkerMessage) {
      // Simulate heavy work
      final result = _heavyDouble(message.input);
      message.replyTo.send(result);
    }
  });
}

int _heavyDouble(int n) {
  // Simulate some CPU work so we can see benefits of isolate
  var acc = 0;
  for (int i = 0; i < 15000000; i++) {
    acc = (acc + n) ^ i; // arbitrary operations
  }
  return n * 2 + (acc % 7); // return something deterministic-ish
}

// ------------------------------
// Small UI helper
// ------------------------------
class _DemoButton extends StatelessWidget {
  final String label;
  final String subtitle;
  final VoidCallback? onPressed;
  const _DemoButton({
    required this.label,
    required this.subtitle,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      ),
      child: Row(
        children: [
          const Icon(Icons.memory),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(label, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                const SizedBox(height: 2),
                Text(subtitle, style: const TextStyle(fontSize: 12)),
              ],
            ),
          ),
          const Icon(Icons.play_arrow),
        ],
      ),
    );
  }
}
