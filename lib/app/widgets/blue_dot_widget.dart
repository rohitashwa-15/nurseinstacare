import 'package:flutter/material.dart';
import '../app.dart';

class BlueDotWidget extends StatefulWidget {
  const BlueDotWidget({Key? key}) : super(key: key);

  @override
  _BlueDotWidgetState createState() => _BlueDotWidgetState();
}

class _BlueDotWidgetState extends State<BlueDotWidget> {
  Color color = Colors.white;

  bool _value = false;
  @override
  Widget build(BuildContext context) => Padding(
        padding: Dimens.edgeInsets10,
        child: SizedBox(
          width: Dimens.twentyFive,
          height: Dimens.twentyFive,
          child: Center(
            child: InkWell(
              onTap: () {
                setState(() {
                  _value = !_value;
                  if (color == Colors.white) {
                    color = Colors.blue;
                  } else {
                    color = Colors.white;
                  }
                });
              },
              child: Container(
                width: Dimens.twentyFive,
                height: Dimens.twentyFive,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: ColorsValue.greyColor),
                  color: Colors.white,
                ),
                child: Center(
                  child: Container(
                    width: Dimens.thirteen,
                    height: Dimens.thirteen,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: color,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}
