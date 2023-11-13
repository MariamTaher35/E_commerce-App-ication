import 'package:flutter/material.dart';

void main() {
  runApp(const MyApplication());
}

class MyApplication extends StatefulWidget {
  const MyApplication({super.key});

  @override
  State<MyApplication> createState() => _MyApplicationState();
}

class _MyApplicationState extends State<MyApplication> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.only(
              top: mediaQuery.width * .1,
              left: mediaQuery.width * .02,
              right: mediaQuery.width * .02),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.arrow_back,
                    size: mediaQuery.width * .07,
                    color: Color(0xFF004182),
                  ),
                  SizedBox(width: mediaQuery.width * .35),
                  Text(
                    "Cart",
                    style: TextStyle(
                      color: Color(0xFF004182),
                      fontSize: mediaQuery.width * .07,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  SizedBox(
                    width: mediaQuery.width * .20,
                  ),
                  Icon(
                    Icons.search,
                    size: mediaQuery.width * .07,
                    color: Color(0xFF004182),
                  ),
                  SizedBox(
                    width: mediaQuery.width * .06,
                  ),
                  Icon(
                    Icons.shopping_cart_outlined,
                    size: mediaQuery.width * .07,
                    color: Color(0xFF004182),
                  )
                ],
              ),
              Container(
                height: mediaQuery.height * .75,
                child: ListView(
                  children: [
                    Container(
                      width: mediaQuery.width * .55,
                      height: mediaQuery.height * .15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: const Border.fromBorderSide(
                              BorderSide(color: Color(0xFF004182)))),
                      child: Row(
                        children: [
                          const Image(
                            image: AssetImage("assets/images/img.png"),
                            fit: BoxFit.cover,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Nike Air Jordon",
                                style: TextStyle(
                                    fontSize: mediaQuery.width * .05,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal),
                              ),
                              Row(
                                children: [
                                  Image(
                                    image:
                                        AssetImage("assets/images/img_1.png"),
                                    width: mediaQuery.width * .04,
                                  ),
                                  Text("  Orange Size: 40"),
                                ],
                              ),
                              Text(
                                "EGP 3,500",
                                style: TextStyle(
                                    fontSize: mediaQuery.width * .05,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal),
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mediaQuery.width * .2),
                                child: Icon(
                                  Icons.delete,
                                  size: mediaQuery.width * .08,
                                ),
                              ),
                              Container(
                                width: mediaQuery.width * .5 / 2,
                                height: mediaQuery.height * .05,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: const Color(0xFF004182)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    InkWell(
                                        onTap: onPlus,
                                        child: const Icon(
                                          Icons.remove_circle_outline,
                                          color: Colors.white,
                                        )),
                                    Text(
                                      "$counter",
                                      style:
                                          const TextStyle(color: Colors.white),
                                    ),
                                    InkWell(
                                        onTap: onAdd,
                                        child: const Icon(
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
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: mediaQuery.width * .55,
                      height: mediaQuery.height * .15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: const Border.fromBorderSide(
                              BorderSide(color: Color(0xFF004182)))),
                      child: Row(
                        children: [
                          const Image(
                            image: AssetImage("assets/images/img.png"),
                            fit: BoxFit.cover,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Nike Air Jordon",
                                style: TextStyle(
                                    fontSize: mediaQuery.width * .05,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal),
                              ),
                              Row(
                                children: [
                                  Image(
                                    image:
                                        AssetImage("assets/images/img_1.png"),
                                    width: mediaQuery.width * .04,
                                  ),
                                  Text("  Orange Size: 40"),
                                ],
                              ),
                              Text(
                                "EGP 3,500",
                                style: TextStyle(
                                    fontSize: mediaQuery.width * .05,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal),
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mediaQuery.width * .2),
                                child: Icon(
                                  Icons.delete,
                                  size: mediaQuery.width * .08,
                                ),
                              ),
                              Container(
                                width: mediaQuery.width * .5 / 2,
                                height: mediaQuery.height * .05,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: const Color(0xFF004182)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    InkWell(
                                        onTap: onPlus,
                                        child: const Icon(
                                          Icons.remove_circle_outline,
                                          color: Colors.white,
                                        )),
                                    Text(
                                      "$counter",
                                      style:
                                          const TextStyle(color: Colors.white),
                                    ),
                                    InkWell(
                                        onTap: onAdd,
                                        child: const Icon(
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
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Total price",
                        style: TextStyle(fontSize: mediaQuery.width * .05),
                      ),
                      SizedBox(
                        height: mediaQuery.height * .01,
                      ),
                      Text(
                        "EGP 3,500",
                        style: TextStyle(
                            fontSize: mediaQuery.width * .05,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal),
                      ),
                    ],
                  ),
                  Container(
                    width: mediaQuery.width * .6,
                    height: mediaQuery.height * .06,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFF004182)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Check Out",
                          style: TextStyle(
                            fontSize: mediaQuery.width * .05,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal,
                            color: Colors.white,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        )
                      ],
                    ),
                  )
                ],
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
