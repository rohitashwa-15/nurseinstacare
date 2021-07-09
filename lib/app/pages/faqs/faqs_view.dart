import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../app.dart';

/// The faqs view which will show the faqs screen and perform the basic
/// ui work.
class FaqsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) => GetBuilder<FaqsController>(
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
                    'FAQS',
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
              const ListTileWidget(
                title: 'Loren',
                iconData: Icons.circle,
                size: 12,
                iconColor: ColorsValue.blackColor,
                route: RouteManagement.goToNotifications,
              ),
              DividerWidget(),
              const ListTileWidget(
                title: 'Dolor',
                iconData: Icons.circle,
                size: 12,
                iconColor: ColorsValue.blackColor,
                route: RouteManagement.goToHelp,
              ),
              DividerWidget(),
              const ListTileWidget(
                iconData: Icons.circle,
                title: 'Lorem',
                size: 12,
                iconColor: ColorsValue.blackColor,
                route: RouteManagement.goToNotifications,
              ),
              DividerWidget(),
              const ListTileWidget(
                iconData: Icons.circle,
                title: 'Duis',
                size: 12,
                iconColor: ColorsValue.blackColor,
                route: RouteManagement.goToNotifications,
              ),
              DividerWidget(),
            ],
          ),
        ),
      );
}
