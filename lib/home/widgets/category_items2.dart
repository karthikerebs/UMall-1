import 'package:flutter/material.dart';
import 'package:umall_app/home/constants/color.dart';
import 'package:umall_app/home/widgets/listview_builder.dart';

class CategoryItems2 extends StatelessWidget {
  const CategoryItems2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 141,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/background.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: const ListViewBuilder(
        itemCount: 5,
        image: 'assets/icon2.png',
        imageWidth: 65,
        imageHeight: 90,
        text: 'Tag Vision',
        textColor: CustomColor.white,
      ),
    );
  }
}
