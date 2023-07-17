import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:m2_lesson7_hw/utils/app_colors.dart';
import 'package:m2_lesson7_hw/utils/app_icons.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 255,
          height: 45,
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                //fillColor: AppColors.C_F5F6FA,
                prefixIcon: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  child: SvgPicture.asset(
                    AppIcons.searchIcon,
                  ),
                ),
                labelText: "Search"),
          ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.C_9775FA),
            width: 45,
            height: 45,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SvgPicture.asset(
                AppIcons.voiceIcon,
              ),
            ),
          ),
        )
      ],
    );
  }
}
