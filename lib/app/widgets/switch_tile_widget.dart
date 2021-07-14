import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import '../app.dart';

class SwitchTileWidget extends StatefulWidget {
    const SwitchTileWidget({
    required this.title, Key? key
  }): super(key: key);


  final String title;

  @override
  State<SwitchTileWidget> createState() => _SwitchTileWidgetState();
}

class _SwitchTileWidgetState extends State<SwitchTileWidget> {
 bool status = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        color: ColorsValue.primaryColorRgb,
        width: Dimens.percentWidth(1),
        height: Dimens.sixty,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  widget.title,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: ColorsValue.blackColor,
                      fontSize: 17),
                ),
              ),
           Image.asset( 
             ''
             ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: FlutterSwitch(
          width: 40.0,
          height: 36.0,
        valueFontSize: 25.0,
         toggleSize: 38.0,
          value: status,
          borderRadius: 30.0,
          padding: 8.0,
          onToggle: (val) {
              setState(() {
                status = val;
              });
          },
        ),
           ),
            ],
          ),
        ),
        );
  }
}
