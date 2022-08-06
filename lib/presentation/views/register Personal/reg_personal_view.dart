import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:mobile_assessment_flutter/presentation/resources/app_scaffold.dart';
import 'package:mobile_assessment_flutter/presentation/resources/dimension_manager.dart';
import 'package:mobile_assessment_flutter/presentation/resources/routes_manager.dart';
import 'package:mobile_assessment_flutter/presentation/resources/text&textbutton.dart';
import 'package:mobile_assessment_flutter/presentation/views/register%20Personal/widgets/bottom_buttons.dart';

import '../../resources/color_manager.dart';
import '../../resources/font_manager.dart';
import '../../resources/style_manager.dart';
import '../../resources/values_manager.dart';
import 'widgets/form_container.dart';

class RegistrationPersonalView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      padding: EdgeInsets.only(
        top: getHeight(84.33),
      ),
      widget: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  EdgeInsets.only(left: getWidth(22), top: getHeight(84.04)),
              child: Text(
                'Welcome!',
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
              padding: EdgeInsets.only(left: getWidth(22)),
              height: getHeight(52),
              child: Text(
                'Create an account to get started with Cargo Express',
                style: getLightTextStyle(
                  color: ColorManager.textcolor,
                  fontSize: FontSizeManager.s17,
                ),
              ),
            ),
            SizedBox(
              height: getHeight(22.44),
            ),
            FormContainer(),
            SizedBox(
              height: getHeight(7),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: getWidth(67),
              ),
              child: TextAndTextButton(
                text: 'Already have an account?',
                textButtonTitle: 'Log In',
                onPressed: () => Get.toNamed(
                  RouteManager.goToLoginRoute(),
                ),
              ),
            ),
            SizedBox(
              height: getHeight(37),
            ),
            const BottomButton(),
          ],
        ),
      ),
    );
  }
}
