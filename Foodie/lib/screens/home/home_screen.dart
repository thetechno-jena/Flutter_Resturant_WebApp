import 'package:flutter/material.dart';
import 'package:resturant/constant.dart';
import 'package:resturant/screens/home/header.dart';
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
                      header(),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Column(
                              children: [
                                Text(
                                  "Eat Today!",
                                  style: TextStyle(
                                      fontSize: 56,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Live another Day",
                                  style: TextStyle(
                                    fontSize: 40,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa. Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                      fillColor: const Color.fromARGB(
                                          255, 255, 255, 255),
                                      filled: true,
                                      hintText: "Search For Favourite Food",
                                      focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide.none),
                                      suffixIcon: Icon(
                                        Icons.adjust_sharp,
                                        color: kSecondaryColor,
                                      )),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/banner4.png',
                                  width: MediaQuery.of(context).size.width,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
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
