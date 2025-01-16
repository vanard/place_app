import 'package:flutter/material.dart';
import 'package:place_app/const.dart';
import 'package:place_app/ext.dart';
import 'package:place_app/views/home_screen.dart';
import 'package:place_app/widgets/home_app_bar_dart';


// Unsused file

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: appBar(),
      body: Column(
        children: [
          Expanded(child: Text('Test')),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 15,
                        ),
                        decoration: BoxDecoration(
                          color: kButtonColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: List.generate(
                            icons.length,
                            (index) => GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedPage = index;
                                });
                              },
                              child: Icon(
                                icons[index],
                                size: 32,
                                color: selectedPage == index
                                    ? Colors.white
                                    : Colors.white.withTransparent(0.4),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      )
     );
  }
}