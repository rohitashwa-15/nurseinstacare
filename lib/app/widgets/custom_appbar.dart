import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../app.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key, required this.title}) : super(key: key);
  final String title;
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
            Dimens.boxHeight40,
            Text(
              title,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: ColorsValue.blackColor),
            ),
          ],
        ),
        backgroundColor: ColorsValue.primaryColorRgb,
      );

  @override
  Size get preferredSize => Size.fromHeight(Dimens.ninety);
}
