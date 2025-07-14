import 'package:flutter/material.dart';
import 'dart:async';

import 'package:alium_sdk/alium_sdk.dart';

void main() {
WidgetsFlutterBinding.ensureInitialized();
  Alium.config("https://alssurvey-dev.s3.ap-south-1.amazonaws.com/app/cstjn/cstjn_129.json");
  runApp(const MyApp());

}

class MyApp extends StatefulWidget {
  const MyApp();

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';

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
    

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;
 Alium.trigger("screen4", {"dim1": "alium"});
    setState(() {});
    // Alium.stop("secondscreen");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Text('Running on: $_platformVersion\n'),
        ),
      ),
    );
  }
}
