import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mobile_assessment_flutter/presentation/resources/color_manager.dart';
import 'package:mobile_assessment_flutter/presentation/resources/dimension_manager.dart';
import 'package:mobile_assessment_flutter/presentation/resources/font_manager.dart';
import 'package:mobile_assessment_flutter/presentation/resources/style_manager.dart';

import 'values_manager.dart';

class MiniButtonCard extends StatelessWidget {
  final String title;
  final Color textcolor;
  final Color backgroundColor;
  const MiniButtonCard({
    Key? key,
    required this.title,
    required this.textcolor,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getHeight(63),
      width: getWidth(136),
      child: Card(
          elevation: 1.5,
          shape: Theme.of(context).cardTheme.shape,
          color: backgroundColor,
          child: Center(
            child: Text(
              title,
              style: getMediumTextStyle(
                color: textcolor,
                fontSize: FontSizeManager.s24,
              ),
            ),
          )),
    );
  }
}
