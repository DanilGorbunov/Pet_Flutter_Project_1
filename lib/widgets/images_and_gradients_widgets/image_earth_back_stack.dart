import 'package:flutter/material.dart';

class ImageEarthBackStack extends StatefulWidget {
  const ImageEarthBackStack({Key? key}) : super(key: key);

  @override
  State<ImageEarthBackStack> createState() => _ImageEarthBackStackState();
}

class _ImageEarthBackStackState extends State<ImageEarthBackStack> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            'assets/images/earth.png',
          ),
        ),
      ),
      height: 950.0,
    );
  }
}
