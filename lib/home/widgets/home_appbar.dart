import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:umall_app/home/constants/color.dart';
import 'package:umall_app/home/styles/styles.dart';
import 'package:umall_app/home/widgets/search_widget.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/universal_background.png',
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            // SvgPicture.asset('assets/Logo.svg'),
            SizedBox(
              height: 10,
            ),
            AppbarRow1(),
            SizedBox(
              height: 20,
            ),
            AppbarRow2(),
          ],
        ),
      ),
    );
  }
}

// AppbarRow1

class AppbarRow1 extends StatefulWidget {
  const AppbarRow1({super.key});

  @override
  State<AppbarRow1> createState() => _AppbarRow1State();
}

class _AppbarRow1State extends State<AppbarRow1> {
  bool toggleValue = true;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset('assets/svg/Logo.svg'),
        const Spacer(),
        Text(
          "Wholesale \n Store",
          style: poppins(CustomColor.white, 14),
          maxLines: 2,
          textAlign: TextAlign.end,
        ),
        const SizedBox(
          width: 10,
        ),
        AnimatedContainer(
          duration: const Duration(milliseconds: 1000),
          height: 28.0,
          width: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: toggleValue ? CustomColor.green : CustomColor.red,
          ),
          child: Stack(
            children: [
              AnimatedPositioned(
                duration: const Duration(milliseconds: 1000),
                curve: Curves.easeIn,
                top: 0,
                bottom: 0,
                left: toggleValue ? 20.0 : 0.0,
                right: toggleValue ? 0.0 : 20.0,
                child: InkWell(
                  onTap: toggleButton,
                  child: AnimatedSwitcher(
                      duration: const Duration(
                        milliseconds: 1000,
                      ),
                      transitionBuilder: (child, animation) {
                        return ScaleTransition(
                          scale: animation,
                          child: child,
                        );
                      },
                      child: toggleValue
                          ? Icon(
                              Icons.circle,
                              color: CustomColor.white,
                              size: 24,
                              key: UniqueKey(),
                            )
                          : Icon(
                              Icons.circle,
                              color: CustomColor.white,
                              size: 24,
                              key: UniqueKey(),
                            )),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        InkWell(
          onTap: () {},
          child: SvgPicture.asset('assets/svg/ProfileIcon.svg'),
        ),
      ],
    );
  }

  toggleButton() {
    setState(() {
      toggleValue = !toggleValue;
    });
  }
}

// AppbarRow2

class AppbarRow2 extends StatelessWidget {
  const AppbarRow2({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = Get.width;

    return Row(
      children: [
        SearchContainer(
          width: width * 0.44,
          color: CustomColor.white,
          iconImage: SvgPicture.asset('assets/svg/search_icon.svg'),
          text: 'Search anything...',
        ),
        const SizedBox(
          width: 10,
        ),
        SizedBox(
          width: width * 0.27,
          height: 42.0,
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: CustomColor.white,
              // contentPadding: const EdgeInsets.symmetric(vertical: 0),
              
              prefixIcon: Image.asset('assets/location.png'),
              hintText: 'location',
              hintStyle: poppins(CustomColor.hintGrey, 12),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        SearchContainer(
            color: CustomColor.white,
            iconImage: SvgPicture.asset('assets/svg/scanner.svg'),
            text: ''),
      ],
    );
  }
}
