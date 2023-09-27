import 'package:flutter/material.dart';
import 'package:hotelmenu/second.dart';

class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dubai Hotels",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          Icon(
            Icons.favorite_border,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.star), label: "Star"),
          BottomNavigationBarItem(
              icon: Icon(Icons.currency_rupee), label: "Price"),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_on), label: "Location"),
        ],
        onTap: (index) {
          setState(() {
            currentindex = index;
          });
        },
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 400,
              height: 260,
              color: Color.fromARGB(255, 249, 248, 248),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 400,
                            height: 170,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage("asset/imoy.png"),
                                    fit: BoxFit.cover,
                                    opacity: 0.8)),
                            child: Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 110),
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 95, 249, 100),
                                            borderRadius: BorderRadius.only(
                                                bottomRight:
                                                    Radius.circular(10),
                                                topRight: Radius.circular(10))),
                                        width: 70,
                                        height: 50,
                                        child: Center(
                                          child: Text(
                                            "4.5",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 30),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Excellent",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 300, top: 5),
                                  child: Icon(
                                    Icons.favorite_border,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 200),
                          child: Row(
                            children: [
                              Text("Plage de Dubai Jumeirah",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                width: 83,
                              ),
                              Text(
                                "₹ 9,987",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 173),
                          child: Row(
                            children: [
                              Icon(Icons.star_rate),
                              Icon(Icons.star_rate),
                              Icon(Icons.star_rate),
                              Icon(Icons.star_rate),
                              Icon(Icons.star_rate),
                              SizedBox(
                                width: 170,
                              ),
                              Text(
                                "Pour 2 nuits",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black45),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 226),
                          child: Row(
                            children: [
                              Text(
                                "Palm Jumeirah Dubai",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black45),
                              ),
                              SizedBox(
                                width: 140,
                              ),
                              Text(
                                "Sauvegardez",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.green),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => second()));
              },
              child: Container(
                width: 400,
                height: 250,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 400,
                            height: 170,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage("asset/hotel.png"),
                                    fit: BoxFit.cover,
                                    opacity: 0.8)),
                            child: Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 110),
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 232, 147, 19),
                                            borderRadius: BorderRadius.only(
                                                bottomRight:
                                                    Radius.circular(10),
                                                topRight: Radius.circular(10))),
                                        width: 70,
                                        height: 50,
                                        child: Center(
                                          child: Text(
                                            "3.5",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 30),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Tres bon",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 320, top: 5),
                                  child: Icon(
                                    Icons.favorite_border,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 200),
                            child: Row(
                              children: [
                                Text(
                                  "Alliance francaise Dubai",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 93,
                                ),
                                Text(
                                  "₹ 9,987",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 173),
                            child: Row(
                              children: [
                                Icon(Icons.star_rate),
                                Icon(Icons.star_rate),
                                Icon(Icons.star_rate),
                                Icon(Icons.star_rate),
                                SizedBox(
                                  width: 195,
                                ),
                                Text(
                                  "Pour 2 nuits",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black45),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 226),
                            child: Row(
                              children: [
                                Text(
                                  "Palm jumeirah Dubai",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black45),
                                ),
                                SizedBox(
                                  width: 140,
                                ),
                                Text(
                                  "Sauvogrardez",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.green),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 400,
              height: 250,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 400,
                          height: 170,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage("asset/hotels.png"),
                                  fit: BoxFit.cover,
                                  opacity: 0.8)),
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 110),
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromARGB(255, 95, 249, 100),
                                          borderRadius: BorderRadius.only(
                                              bottomRight: Radius.circular(10),
                                              topRight: Radius.circular(10))),
                                      width: 70,
                                      height: 50,
                                      child: Center(
                                        child: Text(
                                          "2.5",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 30),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Bein",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 320, top: 5),
                                child: Icon(
                                  Icons.favorite_border,
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 200),
                          child: Row(
                            children: [
                              Text(
                                "Sofitel Dubai Le Palm",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 83,
                              ),
                              Text(
                                "₹ 9,987",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 173),
                          child: Row(
                            children: [
                              Icon(Icons.star_rate),
                              Icon(Icons.star_rate),
                              Icon(Icons.star_rate),
                              SizedBox(
                                width: 170,
                              ),
                              Text(
                                "Pour 2 nuits",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black45),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 226),
                          child: Row(
                            children: [
                              Text(
                                "Palm Jumeirah Dubai",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black45),
                              ),
                              SizedBox(
                                width: 140,
                              ),
                              Text(
                                "Sauvegrardez",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.green),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
