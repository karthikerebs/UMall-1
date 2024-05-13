import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
// import 'package:umall_app/home/constants/size.dart';

class CarouselBanner extends StatelessWidget {
  CarouselBanner({
    super.key,
  });

  final bannerImages = [
    Image.asset('assets/banner.png'),
    Image.asset('assets/banner.png'),
    Image.asset('assets/banner.png')
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: bannerImages,
      options: CarouselOptions(
        autoPlay: true,
        autoPlayCurve: Curves.fastOutSlowIn,
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayInterval: const Duration(seconds: 2),
        enlargeCenterPage: true,
        aspectRatio: 2.0,
      ),
    );
  }
}
