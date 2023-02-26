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
      theme: ThemeData(),
      home: const MyHomePage(title: 'Compi'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool loginState = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 18,
        title: DefaultTextStyle(
          style: TextStyle(
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 1
              ..color = Colors.black,
            fontSize: 32,
            fontFamily: 'Merienda',
            fontWeight: FontWeight.w700,
            //color: Colors.black,
          ),
          child: Text(
            widget.title,
          ),
        ),
        centerTitle: false,
        leadingWidth: 0,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        actions: [
          loginState == false
              ? Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: TextButton(
                      onPressed: () {
                        setState(() {
                          loginState = true;
                        });
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(fontSize: 16),
                      )),
                )
              : Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: IconButton(
                      onPressed: () {
                        setState(() {
                          loginState = false;
                        });
                      },
                      icon: const Icon(
                        Icons.account_circle_outlined,
                        color: Colors.black,
                        size: 42,
                      )),
                )
        ],
      ),
      body: Center(),
    );
  }
}
