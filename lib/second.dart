import 'package:flutter/material.dart';
import 'package:hotelmenu/first.dart';

class second extends StatefulWidget {
  const second({super.key});

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> with TickerProviderStateMixin {
  List<String> asset = ["asset/hotel.png", "asset/imoy.png", "asset/dubai.png"];
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      PageView.builder(
        onPageChanged: (value) {
          currentindex = value;
          setState(() {});
        },
        itemCount: asset.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(asset[index]), fit: BoxFit.cover)),
          );
        },
      ),
      Padding(
        padding: const EdgeInsets.only(top: 400, left: 750),
        child: Row(
          children: [
            TabPageSelector(
              controller: TabController(
                  length: asset.length,
                  initialIndex: currentindex,
                  vsync: this),
            ),
            SizedBox(
              width: 50,
            ),
            Icon(
              Icons.forward_sharp,
              color: Colors.white,
              size: 30,
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.favorite,
              color: Colors.white,
              size: 30,
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 430, left: 20),
        child: Row(
          children: [
            Icon(
              Icons.star,
              color: Colors.white,
            ),
            Icon(
              Icons.star,
              color: Colors.white,
            ),
            Icon(
              Icons.star,
              color: Colors.white,
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 470, left: 20),
        child: Column(
          children: [
            Text(
              "Alliance francaise Dubai",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20, top: 500),
        child: Text(
          "Complexe Techniplex opp.s.v road",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20, top: 550),
        child: Text(
          "Starting per person",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w400, color: Colors.white),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20, top: 570),
        child: Text(
          "₹2,599",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 550, left: 900),
        child: Container(
          width: 170,
          height: 60,
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Center(
            child: Text(
              "Select Room",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => first()),
          );
        },
      )
    ]));
  }
}
