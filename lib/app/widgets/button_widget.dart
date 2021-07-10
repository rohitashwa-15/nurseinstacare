import 'package:flutter/material.dart';

import '../app.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key, this.onTap, required this.title})
      : super(key: key);
  final void Function()? onTap;
  final String title;
  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: onTap,
        child: Container(
          width: Dimens.percentWidth(1),
          height: Dimens.fifty,
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(Dimens.eight),
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: Dimens.eighteen,
              ),
            ),
          ),
        ),
      );
}
