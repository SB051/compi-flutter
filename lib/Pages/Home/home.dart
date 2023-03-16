import 'package:flutter/material.dart';
import 'package:compi/index.dart';

Index _index = Index();

class Homepage {
  Widget HomePageLayout(BuildContext context) {
    double scrollPosition = 0;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Banner(context),
          Container(
            padding: const EdgeInsets.all(20.0),
            height: 1000,
            width: 1000,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "ประเภทวิทยาศาสตร์",
                    style: TextStyle(color: Color(0xFF606060), fontSize: 20),
                  ),
                  GestureDetector(
                    onPanUpdate: (details) {
                      // calculate the new scroll position based on the drag details
                      // and update the scroll position of the ListView accordingly
                      scrollPosition += details.delta.dy;
                      _index.st();
                    },
                    child: Container(
                        margin: EdgeInsets.only(top: 10),
                        height: 345,
                        width: MediaQuery.of(context).size.width,
                        child: ListView.builder(
                          controller: ScrollController(
                              initialScrollOffset: scrollPosition),
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                                padding: const EdgeInsets.all(
                                    10.0), // add the desired padding here
                                child: cardCompetiton());
                          },
                        )),
                  )
                ]),
          )
        ],
      ),
    );
  }

  Widget Banner(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Center(
          child: Transform.scale(
            scale: MediaQuery.of(context).size.width / 1920,
            child: Container(
              height: 377.67,
              width: 1920,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                const Color(0xFFFDD835),
                const Color(0xFF0500FF).withOpacity(0.5)
              ])),
            ),
          ),
        ),
        Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Compi",
                style: bannerTitle(42),
              ),
              Text(
                "เว็บค้นหารายการประกวดแข่งขัน",
                style: bannerText(42),
              ),
              Text(
                "การแข่งขันที่ใช่ กับคณะที่ชอบ",
                style: bannerText(24),
              )
            ],
          ),
        ),
      ],
    );
  }

  TextStyle bannerText(double size) {
    return TextStyle(fontSize: size, color: Colors.white);
  }

  TextStyle bannerTitle(double size) {
    return TextStyle(
        fontSize: size, color: Colors.white, fontFamily: 'Merienda');
  }

  Widget cardCompetiton() {
    return Container(
      padding: EdgeInsets.all(20),
      width: 200,
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Container(height: 180, width: 180, color: Colors.green),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Text(
            "Lorem ipsum",
            style: normalText(16),
            textAlign: TextAlign.left,
          ),
        ),
        Text(
          "ชื่อผู้จัด",
          style: normalText(12),
          textAlign: TextAlign.left,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sit amet ornare metus. Nunc imperdiet lacinia posuere. Nulla cursus interdum ligula, sit amet commodo tellus condimentum vel. Curabitur rhoncus urna ac bibendum consectetur. Aenean nisi orci, commodo quis sem a, vulputate semper nunc. Aenean et euismod arcu.",
            maxLines: 3,
            style: normalText(14),
          ),
        )
      ]),
    );
  }

  TextStyle normalText(double size) {
    return TextStyle(color: Color(0xFF606060), fontSize: size);
  }
}
