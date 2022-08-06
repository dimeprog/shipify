import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mobile_assessment_flutter/presentation/resources/assets_manager.dart';
import 'package:mobile_assessment_flutter/presentation/resources/color_manager.dart';
import 'package:mobile_assessment_flutter/presentation/resources/dimension_manager.dart';
import 'package:mobile_assessment_flutter/presentation/resources/font_manager.dart';
import 'package:mobile_assessment_flutter/presentation/resources/routes_manager.dart';
import 'package:mobile_assessment_flutter/presentation/resources/style_manager.dart';
import 'package:mobile_assessment_flutter/presentation/resources/values_manager.dart';
import 'package:mobile_assessment_flutter/presentation/views/onboardingview/widgets/button_container.dart';

class OnBoardingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              AssetManager.AppBackgroundImage,
            ),
          ),
        ),
        padding: EdgeInsets.only(
            left: getWidth(26.33),
            top: getHeight(84.33),
            right: getWidth(28.33)),
        height: getHeight(926),
        width: double.infinity,
        child: Column(
          children: [
            Container(
              width: getWidth(AppSize.s319_27),
              height: getHeight(78),
              child: Text(
                'What kind of user are you?',
                style: TextStyle(
                  fontSize: getHeight(FontSizeManager.s26_33),
                  color: ColorManager.textcolor,
                  fontWeight: FontWeightManager.medium,
                ),
              ),
            ),
            SizedBox(
              height: getHeight(4.09),
            ),
            Container(
              width: getWidth(AppSize.s319_27),
              height: getHeight(78),
              child: Text(
                'We will adapt the app to suit your needs.',
                style: getLightTextStyle(
                  color: ColorManager.textcolor,
                  fontSize: FontSizeManager.s17,
                ),
              ),
            ),
            SizedBox(
              height: getHeight(48.04),
            ),
            ButtonContainer(
              title: 'Personal',
              buttonFunction: () {
                Get.toNamed(RouteManager.goToRegPersonalRoute());
              },
            ),
            SizedBox(
              height: getHeight(40.96),
            ),
            ButtonContainer(
              title: 'E-commerce',
              buttonFunction: () =>
                  Get.toNamed(RouteManager.goToRegEcommerceRoute()),
            ),
          ],
        ),
      ),
    );
  }
}
