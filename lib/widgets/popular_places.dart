import 'package:flutter/material.dart';
import 'package:place_app/ext.dart';
import 'package:place_app/models/place_model.dart';

class PopularPlaces extends StatelessWidget {
  final Place place;

  const PopularPlaces({
    super.key,
    required this.place,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          right: 20,
          left: 20,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12.withTransparent(0.1),
                  spreadRadius: 15,
                  blurRadius: 5,
                ),
              ],
            ),
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            height: 210,
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                fit: BoxFit.cover,
                image:
                    // NetworkImage(
                    //   place.photos[0],
                    // ),
                    Image.network(place.photos[0],
                        errorBuilder: (context, error, stackTrace) {
                  return Container(
                      height: 400, child: Text('No Images to Display'));
                }).image,
              ),
            ),
            child: Column(
              children: [
                const Spacer(),
                Container(
                  color: Colors.black.withTransparent(0.7),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              place.name,
                              style: const TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const Icon(
                                  Icons.location_on,
                                  color: Colors.white,
                                  size: 18,
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  place.location,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star_rounded,
                              size: 22,
                              color: Colors.amber[800],
                            ),
                            const SizedBox(width: 5),
                            Text(
                              place.rate.toString(),
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}