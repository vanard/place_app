import 'package:flutter/material.dart';
import 'package:place_app/const.dart';
import 'package:place_app/ext.dart';
import 'package:place_app/models/place_model.dart';

class DetailScrreen extends StatefulWidget {
  final Place place;
  const DetailScrreen({super.key, required this.place});

  @override
  State<DetailScrreen> createState() => _DetailScrreenState();
}

class _DetailScrreenState extends State<DetailScrreen> {
  int pageView = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: _detailAppBar(context),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.58,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black38,
                    offset: Offset(0, 5),
                    blurRadius: 7,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Stack(
                  children: [
                    PageView(
                      scrollBehavior: AppScrollBehavior(),
                      controller: pageController,
                      onPageChanged: (value) {
                        setState(() {
                          pageView = value;
                        });
                      },
                      children: List.generate(
                        widget.place.photos.length,
                        (index) => Image.network(
                          fit: BoxFit.cover,
                          widget.place.photos[index],
                        ),
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Spacer(),
                        Container(
                          color: Colors.black.withTransparent(0.8),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: List.generate(
                                    widget.place.photos.length,
                                    (index) => GestureDetector(
                                      onTap: () {
                                        if (pageController.hasClients) {
                                          pageController.animateToPage(
                                            index,
                                            duration: const Duration(
                                              milliseconds: 500,
                                            ),
                                            curve: Curves.easeInOut,
                                          );
                                        }
                                      },
                                      child: AnimatedContainer(
                                        duration:
                                            const Duration(milliseconds: 500),
                                        height: 5,
                                        width: 20,
                                        margin: const EdgeInsets.only(right: 5),
                                        decoration: BoxDecoration(
                                          color: pageView == index
                                              ? Colors.white
                                              : Colors.white.withTransparent(0.4),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            widget.place.name,
                                            overflow: TextOverflow.visible,
                                            style: const TextStyle(
                                              fontSize: 20,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(height: 5),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              const Icon(
                                                Icons.location_on,
                                                color: Colors.white,
                                                size: 20,
                                              ),
                                              const SizedBox(width: 5),
                                              Text(
                                                widget.place.location,
                                                style: const TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.star_rounded,
                                              color: Colors.amber[800],
                                              size: 25,
                                            ),
                                            const SizedBox(width: 5),
                                            Text(
                                              widget.place.rate
                                                  .toString(),
                                              style: const TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 5),
                                        Text(
                                          '(${widget.place.review} reviews)',
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: DefaultTabController(
                length: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.54,
                      child: const TabBar(
                        labelColor: Colors.orange,
                        labelStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                        unselectedLabelColor: Colors.black,
                        indicatorColor: Colors.orange,
                        dividerColor: Colors.transparent,
                        tabs: [
                          Tab(text: 'Overview'),
                          Tab(text: 'Review'),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              widget.place.description,
                              maxLines: 3,
                              style: const TextStyle(
                                color: Colors.black54,
                                fontSize: 14,
                                height: 1.5,
                              ),
                            ),
                          ),
                          const Center(
                            child: Text('No Review yet'),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 100,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 14,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Price",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '\$${widget.place.price}',
                          style: const TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.w600,
                            color: Colors.orange,
                          ),
                        ),
                        TextSpan(
                          text: ' / Person',
                          style: TextStyle(
                            color: Colors.black.withTransparent(0.6),
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 10,),
            Expanded(
              child: TextButton(
                onPressed: () => showSnackBar(context, 'The ticket has been added to the cart.'),
                child: Container(
                  margin: const EdgeInsets.only(top: 2),
                  // padding: const EdgeInsets.fromLTRB(
                  //   30,
                  //   20,
                  //   10,
                  //   20,
                  // ),
                  padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 30,
                ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: kButtonColor),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(width: 15),
                      Text(
                        overflow: TextOverflow.ellipsis,
                        "Add to Cart",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

AppBar _detailAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    leadingWidth: 64,
    leading: GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Container(
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.black12),
          ),
          child: const Icon(
            Icons.arrow_back_ios_new,
          ),
        ),
      ),
    ),
    centerTitle: true,
    title: const Text(
      "Detali Page",
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    ),
    actions: [
      InkWell(
        onTap: () => showSnackBar(context, 'The place has been added to the bookmark.'),
        child: Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.black12,
            ),
          ),
          child: const Icon(
            Icons.bookmark_outline,
            size: 30,
          ),
        ),
      ),
      const SizedBox(width: 10),
    ],
  );
}
