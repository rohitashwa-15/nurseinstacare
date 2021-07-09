import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nurseinstacare/app/utils/strings/string_constants.dart';

import '../../app.dart';

/// The week schedule view which will show the weekschedule screen and perform the basic
/// ui work.
// ignore: use_key_in_widget_constructors
class WeekScheduleView extends StatefulWidget {
  @override
  State<WeekScheduleView> createState() => _WeekScheduleViewState();
}

class _WeekScheduleViewState extends State<WeekScheduleView> {
  bool morn = false;
  bool aft = false;
  bool eve = false;
  bool night = false;

  bool status = false;

  @override
  Widget build(BuildContext context) => GetBuilder<WeeksScheduleController>(
        builder: (_controller) => Scaffold(
          backgroundColor: ColorsValue.primaryColorRgb,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(Dimens.sixty),
            child: AppBar(
              backgroundColor: Colors.white,
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            key: const Key('week-schedule-view'),
            children: [
              Padding(
                padding: Dimens.edgeInsets10,
                child: Text(
                  'WEEK 1 : 30 MAY 2021, MON',
                  style: TextStyle(
                    color: ColorsValue.blackColor,
                    fontWeight: FontWeight.bold,
                    fontSize: Dimens.twentyFive,
                  ),
                ),
              ),
              const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing',
                style: TextStyle(
                  color: ColorsValue.greyColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ScheduleWidget(
                  title: StringConstants.morn + ' ' + StringConstants.shift,
                  timings: StringConstants.mornTimings),
              ScheduleWidget(
                  title: StringConstants.aft + ' ' + StringConstants.shift,
                  timings: StringConstants.aftTimings),
              ScheduleWidget(
                  title: StringConstants.eve + ' ' + StringConstants.shift,
                  timings: StringConstants.eveTimings),
              ScheduleWidget(
                  title: StringConstants.night + ' ' + StringConstants.shift,
                  timings: StringConstants.nightTimings),
              Divider(
                thickness: Dimens.seven,
                height: Dimens.seven,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                key: const Key('repeat-widget'),
                children: [
                  Padding(
                    padding: Dimens.edgeInsets10,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: Dimens.edgeInsets2,
                          child: Text(
                            StringConstants.repeat,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: ColorsValue.blackColor,
                                fontSize: Dimens.eighteen),
                          ),
                        ),
                        Padding(
                          padding: Dimens.edgeInsets2,
                          child: Text(
                            StringConstants.enable,
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: ColorsValue.greyColor,
                                fontSize: Dimens.twelve),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Switch(
                    key: const Key('switch-toggle'),
                    value: status,
                    onChanged: (val) {
                      setState(() {
                        status = val;
                      });
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                key: const Key('repeaton-widget'),
                children: [
                  Padding(
                    padding: Dimens.edgeInsets5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: Dimens.edgeInsets2,
                          child: Text(
                            StringConstants.repeatOn,
                            style:  TextStyle(
                                fontWeight: FontWeight.w600,
                                color: ColorsValue.greyColor,
                                fontSize: Dimens.eighteen),
                          ),
                        ),
                        Padding(
                          padding: Dimens.edgeInsets2,
                          child: Text(
                            StringConstants.everMon,
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: ColorsValue.blackColor,
                                fontSize: Dimens.eighteen),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: Dimens.edgeInsets10,
                    child: Icon(
                      Icons.arrow_right,
                      size: Dimens.fourty,
                      color: ColorsValue.greyColor,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                key: const Key('repeat-every-widget'),
                children: [
                  Padding(
                    padding: Dimens.edgeInsets10,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: Dimens.edgeInsets2,
                          child: Text(
                            StringConstants.repeatEvery,
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: ColorsValue.greyColor,
                                fontSize: Dimens.sixTeen + Dimens.one),
                          ),
                        ),
                        Padding(
                          padding: Dimens.edgeInsets2,
                          child: Text(
                            '3 Weeks',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: ColorsValue.blackColor,
                                fontSize: Dimens.sixTeen + Dimens.one),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: Dimens.edgeInsets10,
                    child: Icon(
                      Icons.arrow_right,
                      size: Dimens.fourty,
                      color: ColorsValue.greyColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: Dimens.percentHeight(Dimens.ten / Dimens.hundred),
              ),
              ElevatedButton(
                key: const Key('mark-widget'),
                onPressed: () {},
                child: Padding(
                  padding: Dimens.getEdgeInsets(80, 0, 80, 0),
                  child: Padding(
                    padding: Dimens.edgeInsets10_5_10_5,
                    child: Text(
                      StringConstants.markasAvailable,
                      style: TextStyle(fontSize: Dimens.sixTeen),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
