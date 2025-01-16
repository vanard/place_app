import 'package:flutter/material.dart';
import 'package:place_app/const.dart';
import 'package:place_app/ext.dart';
import 'package:place_app/models/place_model.dart';
import 'package:place_app/views/detail_scrreen.dart';
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

// List<BottomNavigationBarItem> iconsItem = [
//   BottomNavigationBarItem(
//     icon: Icon(Icons.home),
//     label: "Home",
//   ),
//   BottomNavigationBarItem(
//     icon: Icon(Icons.search),
//     label: "Search",
//   ),
//   BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
//   BottomNavigationBarItem(
//     icon: Icon(Icons.bookmark_outline),
//     label: "Bookmark",
//   ),
//   BottomNavigationBarItem(
//     icon: Icon(Icons.person_outline),
//     label: "Profile",
//   ),
// ];

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
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: kButtonColor,
      //   items: iconsItem,
      //   currentIndex: selectedPage,
      //   selectedItemColor: Colors.white,
      //   unselectedItemColor: Colors.white.withTransparent(0.4),
      //   showSelectedLabels: false,
      //   showUnselectedLabels: false,
      //   onTap: (index) {
      //     setState(() {
      //       selectedPage = index;
      //     });
      //   },
      // ),
      body: AnimatedSwitcher(
          duration: Duration(milliseconds: 500),
          child: selectedPage == 0
              ? homeView(context)
              : selectedPage == 4
                  ? profileView(context)
                  : emptyPageView(context),
          transitionBuilder: (child, animation) {
            const begin = Offset(0.0, 1.0);
            const end = Offset.zero;
            const curve = Curves.decelerate;

            final tween = Tween(begin: begin, end: end);
            final curvedAnimation = CurvedAnimation(
              parent: animation,
              curve: curve,
            );

            return SlideTransition(
              position: tween.animate(curvedAnimation),
              child: child,
            );
          }),
    );
  }

  Column homeView(BuildContext context) {
    return Column(
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
          controller: pageController,
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
            controller: pageController,
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
        alignNavBar(context),
      ],
    );
  }

  Column profileView(BuildContext context) {
    return Column(
      children: [
        Spacer(flex: 1,),
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: SizedBox.fromSize(
            size: Size.fromRadius(48), 
            child: Image.network(
                'https://avatars.githubusercontent.com/u/25784574?v=4',
                fit: BoxFit.cover),
          ),
        ),
        SizedBox(height: 15),
        Text("Vian Rasyid D", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        SizedBox(height: 5),
        Text("Mobile App Developer", style: TextStyle(fontSize: 18, color: Colors.black),),
        SizedBox(height: 10),
        Text("#OpenToWork", style: TextStyle(fontSize: 16, color: Colors.black54),),
        Spacer(flex: 1,),
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
    );
  }

  Stack emptyPageView(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Text(
            "Coming Soon!!!",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        alignNavBar(context),
      ],
    );
  }

  Align alignNavBar(BuildContext context) {
    return Align(
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
                            // } else if (index == 4 && selectedPage != 4) {
                            //   Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //       builder: (_) => ProfileScreen(),
                            //     ),
                            //   );
                            // }
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
    );
  }
}
