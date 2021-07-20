import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../app.dart';

class CustomActionAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  CustomActionAppBar(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.actionIcon})
      : super(key: key);
  final String title;
  final String subtitle;
  Widget actionIcon;
  @override
  Widget build(BuildContext context) => AppBar(
        leading: IconButton(
          icon: Image.asset(IconConstants.backIcon),
          color: Colors.black,
          onPressed: Get.back,
        ),
        centerTitle: true,
        title: Column(
          children: [
            Dimens.boxHeight10,
            Text(
              title,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: ColorsValue.blackColor),
            ),
            Text(
              subtitle,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: ColorsValue.greyColor,
                  fontSize: Dimens.fourteen),
            ),
          ],
        ),
        backgroundColor: ColorsValue.primaryColorRgb,
        actions: [actionIcon],
      );

  @override
  Size get preferredSize => Size.fromHeight(Dimens.ninety);
}
