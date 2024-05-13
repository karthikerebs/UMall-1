import 'package:flutter/material.dart';
import 'package:umall_app/home/widgets/carousel_banner.dart';
import 'package:umall_app/home/widgets/category_items.dart';
import 'package:umall_app/home/widgets/category_items2.dart';
import 'package:umall_app/home/widgets/home_appbar.dart';
import 'package:umall_app/home/widgets/recently_added.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(150),
        child: AppBar(
          flexibleSpace: const HomeAppbar(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselBanner(),
            const CategoryItems(),
            const CategoryItems2(),
            const RecentlyAdded(),
          ],
        ),
      ),
    );
  }
}
