import 'package:flutter/material.dart';
import 'package:umall_app/home/styles/styles.dart';

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({
    super.key,
    required this.itemCount,
    required this.image,
    this.imageWidth,
    this.imageHeight,
    required this.text,
    this.textColor,
  });
  final int itemCount;
  final String image;
  final double? imageWidth;
  final double? imageHeight;
  final String text;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: itemCount,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Image.asset(
                  image,
                  width: imageWidth,
                  height: imageHeight,
                ),
                Text(
                  text,
                  style: rubik(textColor!, 9, FontWeight.w400),
                )
              ],
            ),
          );
        });
  }
}
