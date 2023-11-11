import 'package:flutter/material.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatefulWidget {
  MyApplication({super.key});

  @override
  State<MyApplication> createState() => _MyApplicationState();
}

class _MyApplicationState extends State<MyApplication> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(top: 45, left: 10, right: 10),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.arrow_back,
                    size: 24,
                    color: Color(0xFF004182),
                  ),
                  SizedBox(width: 130),
                  Text(
                    "Cart",
                    style: TextStyle(
                      color: Color(0xFF004182),
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  SizedBox(
                    width: 75,
                  ),
                  Icon(
                    Icons.search,
                    size: 24,
                    color: Color(0xFF004182),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.shopping_cart_outlined,
                    size: 24,
                    color: Color(0xFF004182),
                  )
                ],
              ),
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      width: 398,
                      height: 113,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.fromBorderSide(
                              BorderSide(color: Color(0xFF004182)))),
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage("assets/images/img.png"),
                            fit: BoxFit.fitHeight,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Nike Air Jordon",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal),
                              ),
                              Row(
                                children: [
                                  Image(
                                    image:
                                        AssetImage("assets/images/img_1.png"),
                                    width: 15,
                                  ),
                                  Text("  Orange Size: 40"),
                                ],
                              ),
                              Text(
                                "EGP 3,500",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal),
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 55),
                                child: Icon(
                                  Icons.delete,
                                  size: 30,
                                ),
                              ),
                              Container(
                                width: 95,
                                height: 42,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color(0xFF004182)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    InkWell(
                                        onTap: onPlus,
                                        child: Icon(
                                          Icons.remove_circle_outline,
                                          color: Colors.white,
                                        )),
                                    Text(
                                      "$counter",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    InkWell(
                                        onTap: onAdd,
                                        child: Icon(
                                          Icons.add_circle_outline,
                                          color: Colors.white,
                                        )),
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 398,
                      height: 113,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.fromBorderSide(
                              BorderSide(color: Color(0xFF004182)))),
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage("assets/images/img.png"),
                            fit: BoxFit.fitHeight,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Nike Air Jordon",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal),
                              ),
                              Row(
                                children: [
                                  Image(
                                    image:
                                        AssetImage("assets/images/img_1.png"),
                                    width: 15,
                                  ),
                                  Text("  Orange Size: 40"),
                                ],
                              ),
                              Text(
                                "EGP 3,500",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal),
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 55),
                                child: Icon(
                                  Icons.delete,
                                  size: 30,
                                ),
                              ),
                              Container(
                                width: 95,
                                height: 42,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color(0xFF004182)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    InkWell(
                                        onTap: onPlus,
                                        child: Icon(
                                          Icons.remove_circle_outline,
                                          color: Colors.white,
                                        )),
                                    Text(
                                      "$counter",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    InkWell(
                                        onTap: onAdd,
                                        child: Icon(
                                          Icons.add_circle_outline,
                                          color: Colors.white,
                                        )),
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  onPlus() {
    counter--;

    if (counter < 0) {
      return 0;
    }
    setState(() {});
  }

  onAdd() {
    counter++;
    counter >= 0;
    setState(() {});
  }
}
