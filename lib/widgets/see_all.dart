import 'package:flutter/material.dart';

class SeeAll extends StatelessWidget {
  const SeeAll({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 6.0, vertical: 2.0),
      child: Text(
        "See All",
        style: TextStyle(
          fontSize: 14,
          color: Colors.blueGrey,
        ),
      ),
    );
  }
}