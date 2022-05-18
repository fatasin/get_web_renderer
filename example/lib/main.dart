import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get_web_renderer/get_web_renderer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  CurrentRenderer? _currentRenderer;

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    final currentRenderer = WebRenderer.getCurrentRenderer;

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _currentRenderer = currentRenderer;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Current Web Renderer'),
        ),
        body: _currentRenderer == null
            ? const CircularProgressIndicator()
            : Center(
                child: Text('This device using $_currentRenderer renderer'),
              ),
      ),
    );
  }
}
