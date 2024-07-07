import 'package:flutter/material.dart';
import 'package:resturant/constant.dart';

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
                          Row(
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
                          ),
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

class HeaderMenu extends StatelessWidget {
  const HeaderMenu({
    super.key,
    required this.title,
    required this.press,
  });
  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
          child: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      )),
    );
  }
}
