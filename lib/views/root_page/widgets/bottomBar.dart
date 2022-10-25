import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/json/root_app_json.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int activeTab = 0;
  @override
  Widget build(BuildContext context) {
    return   Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.black,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              items.length,
                  (index) => GestureDetector(
                onTap: () => setState(() => activeTab = index),
                child: Column(
                  children: [
                    Icon(
                      items[index]["icon"],
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      items[index]["text"],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
