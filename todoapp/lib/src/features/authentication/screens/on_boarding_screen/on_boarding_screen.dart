import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:todoapp/src/constants/colors.dart';
import 'package:todoapp/src/constants/image_strings.dart';
import 'package:todoapp/src/constants/sizes.dart';
import 'package:todoapp/src/constants/text_strings.dart';
import 'package:todoapp/src/features/authentication/controllers/on_boarding_controller.dart';
import 'package:todoapp/src/features/authentication/models/model_on_boarding.dart';
import 'package:todoapp/src/features/authentication/screens/on_boarding_screen/on_boarding_page_widget.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final obcontrollor = OnBoardingController();

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: obcontrollor.pages,
            liquidController: obcontrollor.controller,
            onPageChangeCallback: obcontrollor.onPageChangedCallback,
            slideIconWidget: const Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
          ),
          Positioned(
              bottom: 60.0,
              child: OutlinedButton(
                onPressed: () => obcontrollor.animateToNextSlide(),
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: Colors.black26),
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(20),
                  onPrimary: Colors.white,
                ),
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: const BoxDecoration(
                    color: tDarkColor, shape: BoxShape.circle
                  ),
                  child: const Icon(Icons.arrow_forward_ios),
                ),
              ),
          ),
          Positioned(
              top: 50,
              right: 20,
              child: TextButton(
                onPressed: () => obcontrollor.skip(),

                child: const Text("skip", style: TextStyle(color: Colors.grey),),
              )
          ),
          Obx(
            () => Positioned(
              bottom: 10,
                child: AnimatedSmoothIndicator(
                  activeIndex: obcontrollor.currentPage.value,
                  count: 3,
                  effect: const WormEffect(
                    activeDotColor: Color(0xff272727),
                    dotHeight: 5.0,
                  ),
                )
            ),
          )
        ],
      ),
    );
  }


}

