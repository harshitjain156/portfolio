import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
class ResponsiveCarousel extends StatelessWidget {
  final List<String> images;

  ResponsiveCarousel({required this.images});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        aspectRatio: 16 / 7,
        viewportFraction: 0.8,
        autoPlay: true,
      ),
      items: images.map((image) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Image.network(
                image,
                fit: BoxFit.cover,
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
