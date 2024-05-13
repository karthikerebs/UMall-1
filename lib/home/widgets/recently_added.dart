import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:umall_app/home/constants/color.dart';
import 'package:umall_app/home/constants/size.dart';
import 'package:umall_app/home/styles/styles.dart';

class RecentlyAdded extends StatelessWidget {
  const RecentlyAdded({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recently added',
            style: rubik(CustomColor.black, 15, FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: Get.height * 0.25,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
              ),
              itemCount: 8,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icon1.png',
                        width: width * 0.2,
                      ),
                      // const SizedBox(height: 15),
                      Text(
                        'Tiga Vision',
                        style: rubik(CustomColor.black, 8, FontWeight.normal),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
