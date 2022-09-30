import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController numCtrl = TextEditingController();


  @override
  void initState() {
    super.initState();
    numCtrl.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Phone Calling App', style: TextStyle(color: Colors.blue, backgroundColor: Colors.black54),),

        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: numCtrl,
                decoration: const InputDecoration(labelText: "Enter number"),
                keyboardType: TextInputType.number,
              ),
            ),
            ElevatedButton(
              child: const Text("Call",),
              onPressed: () async {
                FlutterPhoneDirectCaller.callNumber(numCtrl.text);
              },
            )
          ],
        ),
      ),
    );
  }
}
