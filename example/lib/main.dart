import 'package:flutter/material.dart';
import 'dart:async';

import 'package:alium_sdk/alium.dart';

void main() {
  runApp(const MyApp());
  Alium.config("");
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: FirstScreen());
  }
}

class FirstScreen extends StatefulWidget {
  @override
  State<FirstScreen> createState() {
    // TODO: implement createState
    return _FirstScreen();
  }
}

class _FirstScreen extends State<FirstScreen> {
  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    // Platform messages may fail, so we use a try/catch PlatformException.
    // We also handle the message potentially returning null.

    // _aliumSdkPlugin
    //     .configure("https://assets.alium.co.in/cmmn/cstjn/cstjn_1038.json");
    Alium.trigger("thirdscreen", {"dim1": "alium"});
    Alium.trigger("secondscreen", {"dim1": "alium"});
    Alium.trigger("firstscreen", {"dim1": "alium"});
    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plugin example app'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Running on:first screen'),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {
                  Alium.stop("thirdscreen");
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return SecondScreen();
                  }));
                },
                child: Text("Go to next screen"),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreen();
}

class _SecondScreen extends State<SecondScreen> {
  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    // Platform messages may fail, so we use a try/catch PlatformException.
    // We also handle the message potentially returning null.

    // _aliumSdkPlugin
    //     .configure("https://assets.alium.co.in/cmmn/cstjn/cstjn_1038.json");
    Alium.trigger("secondscreen", {"dim1": "alium"});
    // Alium.stop("secondscreen");
    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Seond Screen"),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {
                  Alium.stop("secondscreen");
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return ThirdScreen();
                  }));
                },
                child: Text("Go to next screen"),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});
  @override
  State<ThirdScreen> createState() => _ThirdScreen();
}

class _ThirdScreen extends State<ThirdScreen> {
  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    // Platform messages may fail, so we use a try/catch PlatformException.
    // We also handle the message potentially returning null.

    // _aliumSdkPlugin
    //     .configure("https://assets.alium.co.in/cmmn/cstjn/cstjn_1038.json");
    Alium.trigger("secondscreen", {"dim1": "alium"});

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Third Screen"),
        ],
      ),
    );
  }
}
