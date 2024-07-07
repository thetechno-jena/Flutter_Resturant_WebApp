import 'package:flutter/material.dart';
import 'package:resturant/constant.dart';
import 'package:resturant/screens/home/menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            color: kPrimaryColor,
            height: 500,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(kPadding),
                  constraints: BoxConstraints(maxWidth: kMaxWidth),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Foodie",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: kSecondaryColor),
                          ),
                          //
                          //menu bar for web
                          Spacer(),
                          HeaderWebMenu(),
                          Spacer(),
                          Expanded(
                              child: Container(
                            padding: EdgeInsets.only(left: 10.0),
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color: Colors.black54.withOpacity(0.5))),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: TextField(
                                decoration: InputDecoration(
                                    fillColor: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    filled: true,
                                    hintText: "Search For Products",
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none),
                                    prefixIcon: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(Icons.search),
                                    )),
                              ),
                            ),
                          )),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              color: kSecondaryColor,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Icon(
                              Icons.shopping_bag_outlined,
                              color: Colors.white,
                              size: 22,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class HeaderWebMenu extends StatelessWidget {
  const HeaderWebMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        HeaderMenu(
          press: () {},
          title: 'Menu',
        ),
        SizedBox(
          width: kPadding,
        ),
        HeaderMenu(
          press: () {},
          title: 'For Riders',
        ),
        SizedBox(
          width: kPadding,
        ),
        HeaderMenu(
          press: () {},
          title: 'About',
        ),
        SizedBox(
          width: kPadding,
        ),
        HeaderMenu(
          press: () {},
          title: 'Reviews',
        ),
        SizedBox(
          width: kPadding,
        ),
        HeaderMenu(
          press: () {},
          title: 'Items',
        ),
      ],
    );
  }
}
