import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../app.dart';

/// The settings view which will show the settingsscreen and perform the basic
/// ui work.
class HelpView extends StatelessWidget {
  @override
  Widget build(BuildContext context) => GetBuilder<HelpController>(
        builder: (_controller) => Scaffold(
          backgroundColor: ColorsValue.primaryColorRgb,
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(90.0),
            child: AppBar(
              leading: IconButton(
                icon: const Icon(Icons.arrow_left),
                color: Colors.black,
                onPressed: Get.back,
              ),
              centerTitle: true,
              title: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    'HELP',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: ColorsValue.blackColor),
                  ),
                ],
              ),
              backgroundColor: ColorsValue.primaryColorRgb,
            ),
          ),
          body: Column(
            children: [
              Container(
                color: ColorsValue.primaryColorRgb,
                width: Dimens.percentWidth(1),
                height: Dimens.hundred,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.phone,
                              color: ColorsValue.blackColor,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Call',
                              style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: ColorsValue.blackColor,
                                  fontSize: 17),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 45.0),
                        child: const Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.',
                          style: TextStyle(color: ColorsValue.greyColor),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              DividerWidget(),
              Container(
                color: ColorsValue.primaryColorRgb,
                width: Dimens.percentWidth(1),
                height: Dimens.hundred,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.email,
                              color: ColorsValue.blackColor,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Email',
                              style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: ColorsValue.blackColor,
                                  fontSize: 17),
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 45.0),
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.',
                          style: TextStyle(color: ColorsValue.greyColor),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              DividerWidget(),
              Container(
                color: ColorsValue.primaryColorRgb,
                width: Dimens.percentWidth(1),
                height: Dimens.hundred,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.message,
                              color: ColorsValue.blackColor,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Chat With Us ',
                              style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: ColorsValue.blackColor,
                                  fontSize: 17),
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 45.0),
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.',
                          style: TextStyle(color: ColorsValue.greyColor),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              DividerWidget(),
            ],
          ),
        ),
      );
}
