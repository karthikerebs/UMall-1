import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:umall_app/home/constants/color.dart';
import 'package:umall_app/home/styles/styles.dart';

class SearchContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final Color color;
  final SvgPicture iconImage;
  final String text;
  const SearchContainer({
    super.key,
    this.height,
    this.width,
    required this.color,
    required this.iconImage,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height, //50
      width: width, //180
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: CustomColor.grey),
      ),
      child: Center(
        child: Row(
          children: [
            iconImage,
            Text(
              text,
              style: poppins(CustomColor.hintGrey, 12),
            ),
          ],
        ),
      ),
    );
  }
}
