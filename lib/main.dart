import 'package:compi/Pages/Home/home.dart';
import 'package:compi/index.dart';
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool loginState = false;

  final Homepage _homepage = Homepage();
  final Index _index = Index();

  void st() {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 500), () {
      //_index.MyIndex(context: context);
      _index.st = st;
    });
  }

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
            fontSize: 36,
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
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        actions: [
          SearchBox(context),
          /*Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search_rounded,
                    size: 32,
                    color: Color(0xFF606060),
                  ))),*/
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextButton(
                onPressed: () {},
                child: const Text(
                  "ภาพรวม",
                  style: TextStyle(fontSize: 20, color: Color(0xFF606060)),
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text("ไม่สามารถเปลี่ยนภาษาได้"),
                        content: const Text(
                            "ยังไม่รองรับภาษาอื่นๆ ในขณะนี้ - Now still only support Thai language."),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("OK"),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: const Text(
                  "ภาษาไทย",
                  style: TextStyle(fontSize: 20, color: Color(0xFF606060)),
                )),
          ),
          loginState == false
              ? Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 8.0),
                  child: TextButton(
                      onPressed: () {
                        setState(() {
                          loginState = true;
                        });
                      },
                      child: const Text(
                        "ลงชื่อเข้าใช้",
                        style: TextStyle(fontSize: 20),
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
      body: _homepage.HomePageLayout(context),
    );
  }

  Widget SearchBox(BuildContext context) {
    return Container(
        width: 300,
        margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 4),
        child: const TextField(
          style: TextStyle(color: Color(0xFF606060)),
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Search",
              suffixIcon: Icon(
                Icons.search_rounded,
                color: Color(0xFF606060),
              )),
        ));
  }
}
