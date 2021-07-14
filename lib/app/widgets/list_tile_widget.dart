import 'package:flutter/material.dart';

import '../app.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({
    required this.title,
    this.route, required this.listIcon,
  });
  final String title;
  final String listIcon;
  final void Function()? route;
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
                    child: Image.asset(
                      listIcon,
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
               Padding(
                padding: Dimens.edgeInsets5,
                child:  Image.asset(IconConstants.backIcon),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
