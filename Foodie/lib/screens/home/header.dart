import 'package:flutter/material.dart';
import 'package:resturant/constant.dart';
import 'package:resturant/screens/home/home_screen.dart';

class header extends StatelessWidget {
  const header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
          padding: EdgeInsets.only(left: 10.0, right: 5.0),
          height: 50,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black54.withOpacity(0.5))),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: TextField(
              decoration: InputDecoration(
                  fillColor: const Color.fromARGB(255, 255, 255, 255),
                  filled: true,
                  hintText: "Search For Products",
                  border: OutlineInputBorder(borderSide: BorderSide.none),
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
    );
  }
}
