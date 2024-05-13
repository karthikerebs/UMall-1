import 'package:flutter/material.dart';
import 'package:umall_app/home/constants/color.dart';
import 'package:umall_app/home/styles/styles.dart';
import 'package:umall_app/home/widgets/listview_builder.dart';

class CategoryItems extends StatelessWidget {
  const CategoryItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Category",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Rubik',
                    fontSize: 15,
                  ),
                ),
              ),
              TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text(
                        'View All',
                        style: rubik(CustomColor.black, 10, FontWeight.w400),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 12,
                      ),
                    ],
                  ))
            ],
          ),
          const SizedBox(
            height: 100,
            child: ListViewBuilder(
              itemCount: 5,
              image: 'assets/icon1.png',
              imageWidth: 53,
              text: 'Tiga Vision',
              textColor: CustomColor.black,
            ),
          )
        ],
      ),
    );
  }
}
