import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Heading(),
                    HeadingDynamic()
                  ],
                )
            )
        )
    );
  }
}

class Heading extends StatelessWidget {

  String text = "Header Title";
  double _textsize = 24.0;

  Heading({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(
              fontSize: _textsize,
              color: Colors.black
          ),
        ),
        ElevatedButton(onPressed: () {
          _textsize = 50.0;
        },
          child: const Text("Perbersar"),),

      ],
    );
  }
}

class HeadingDynamic extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _DynamicState();
  }

}

class _DynamicState extends State<HeadingDynamic> {

  double _fontsize = 12.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Heading Dynamic",
          style: TextStyle(fontSize: _fontsize, color: Colors.blue),
        ),
        ElevatedButton(onPressed: () {
          setState(() {
            _fontsize += 4.0;
          });
        }, child:
        const Text("Perbesar Dynamic"))
      ],
    );
  }

}