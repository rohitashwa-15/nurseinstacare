import 'package:flutter/material.dart';

import '../app.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({
    required this.iconData,
    required this.title,
    required this.route,
    required this.size, required this.iconColor,
  });
  final IconData iconData;
  final String title;
  final void Function()? route;
  final double size;
  final Color iconColor  ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: route,
      child: Container(
        color: ColorsValue.primaryColorRgb,
        width: Dimens.percentWidth(1),
        height: Dimens.sixty,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      iconData,
                      color: iconColor,
                      size: size,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      title,
                      style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          color: ColorsValue.blackColor,
                          fontSize: 17),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.arrow_right,
                  size: 40,
                  color: ColorsValue.greyColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
