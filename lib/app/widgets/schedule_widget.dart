import 'package:flutter/material.dart';

import '../app.dart';

class ScheduleWidget extends StatefulWidget {
  const ScheduleWidget({
    required this.title, required this.timings,
  });
  final String  title,timings;
  @override
  _ScheduleWidgetState createState() => _ScheduleWidgetState();
}

class _ScheduleWidgetState extends State<ScheduleWidget> {
   bool val=false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimens.edgeInsets5,
      key: const Key('schedule-widget'),
      child: Row(
        children: [
          Checkbox(
            key: const Key('checkbox-widget'),
              value: val,
              onChanged: (bool? value) {
                setState(() {
                  val = value!;
                });
              }),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text(
                widget.title,
                style:  TextStyle(
                  color: ColorsValue.blackColor,
                  fontWeight: FontWeight.w400,
                  fontSize: Dimens.eighteen,
                ),
              ),
              Text(
                widget.timings,
                style: const TextStyle(
                  color: ColorsValue.greyColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
