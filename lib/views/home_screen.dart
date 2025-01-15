import 'package:flutter/material.dart';
import 'package:place_app/const.dart';
import 'package:place_app/ext.dart';
import 'package:place_app/models/place_model.dart';
import 'package:place_app/views/detail_scrreen.dart';
import 'package:place_app/views/profile_screen.dart';
import 'package:place_app/widgets/home_app_bar_dart';
import 'package:place_app/widgets/popular_places.dart';
import 'package:place_app/widgets/recomend_list.dart';
import 'package:place_app/widgets/see_all.dart';

List<IconData> icons = [
  Icons.home,
  Icons.search,
  Icons.shopping_cart,
  Icons.bookmark_outline,
  Icons.person_outline,
];

int selectedPage = 0;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: appBar(),
      body: Column(
        children: [
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Popular Places",
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Colors.black12,
                    ),
                  ),
                  child: SeeAll(),
                )
              ],
            ),
          ),
          const SizedBox(height: 15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              children: List.generate(
                popular.length,
                (index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => DetailScrreen(
                            place: popular[index],
                          ),
                        ),
                      );
                    },
                    child: PopularPlaces(
                      place: popular[index],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Recomendation For You",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Colors.black12,
                    ),
                  ),
                  child: SeeAll(),
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: List.generate(
                  recomend.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => DetailScrreen(
                              place: recomend[index],
                            ),
                          ),
                        );
                      },
                      child: RecomendList(place: recomend[index]),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
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
                                  // if (index == 0 && selectedPage != 0) {
                                  //   Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //       builder: (_) => HomeScreen(),
                                  //     ),
                                  //   );
                                  // } else
                                  if (index == 4 && selectedPage != 4) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) => ProfileScreen(),
                                      ),
                                    );
                                  }
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
      ),
    );
  }
}
