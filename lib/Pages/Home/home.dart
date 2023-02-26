import 'package:flutter/material.dart';

class Homepage {
  late double wsc;

  Widget HomePageLayout(BuildContext context) {
    return Column(
      children: [
        Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 25, right: 25, top: 10),
            padding:
                const EdgeInsets.symmetric(/*vertical: 8,*/ horizontal: 10),
            decoration: BoxDecoration(
              color: const Color(0xFFF1FDFF),
              borderRadius: BorderRadius.circular(50),
            ),
            child: TextField(
              style: const TextStyle(color: Color(0xFF313131)),
              decoration: InputDecoration(
                  hintText: "Search",
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(50)),
                  suffixIcon: const Icon(
                    Icons.search,
                    color: Color(0xFFBCBCBC),
                  )),
            )),
        Text("Tag"),
        Text("List"),
      ],
    );
  }
}
