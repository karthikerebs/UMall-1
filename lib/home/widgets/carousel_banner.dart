import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class CarouselBanner extends StatelessWidget {
  CarouselBanner({
    super.key,
  });

  final bannerImages = [
    'assets/banner.png',
    'assets/banner.png',
    'assets/banner.png'
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: bannerImages.length,
      itemBuilder: (context, index, realIndex) {
        return Container(
          margin: EdgeInsets.symmetric(vertical: Get.height * 0.005),
          width: Get.width,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
          child: Image.asset(
            bannerImages[index],
            fit: BoxFit.cover,
          ),
        );
      },
      options: CarouselOptions(
        aspectRatio: 2,
        viewportFraction: 1,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 1000),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0.9,
        scrollDirection: Axis.horizontal,
      ),
    );
    // Container(
    //   color: Colors.red,
    //   height: 200,

    //   child: CarouselSlider(
    //     items: bannerImages,
    //     options: CarouselOptions(
    //       autoPlay: true,
    //       autoPlayCurve: Curves.fastOutSlowIn,
    //       autoPlayAnimationDuration: const Duration(milliseconds: 800),
    //       autoPlayInterval: const Duration(seconds: 2),
    //       enlargeCenterPage: true,
    //       aspectRatio: 3 / 1,
    //     ),
    //   ),
    // );
  }
}
