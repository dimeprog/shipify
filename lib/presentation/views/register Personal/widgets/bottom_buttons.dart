import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mobile_assessment_flutter/presentation/resources/color_manager.dart';
import 'package:mobile_assessment_flutter/presentation/resources/dimension_manager.dart';
import 'package:mobile_assessment_flutter/presentation/resources/mini_button_card.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: getWidth(42)),
      child: Row(
        children: [
          MiniButtonCard(
            title: 'Back',
            textcolor: ColorManager.textcolor,
            backgroundColor: ColorManager.white,
          ),
          SizedBox(
            width: getWidth(66),
          ),
          MiniButtonCard(
            title: 'Next',
            textcolor: ColorManager.white,
            backgroundColor: ColorManager.lightBlue,
          )
        ],
      ),
    );
  }
}
