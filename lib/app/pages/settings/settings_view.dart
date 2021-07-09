import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:nurseinstacare/app/widgets/list_tiles.dart';

import '../../app.dart';
import 'settings.dart';

/// The settings view which will show the settingsscreen and perform the basic
/// ui work.
class SettingsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) => GetBuilder<SettingsController>(
        builder: (_controller) => Scaffold(
          backgroundColor: ColorsValue.primaryColorRgb,
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(90.0),
            child: AppBar(
              centerTitle: true,
              title: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    'SETTINGS',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: ColorsValue.blackColor),
                  ),
                ],
              ),
              backgroundColor: ColorsValue.primaryColorRgb,
            ),
          ),
          body:const Lw(itm: 10,), /*Column(
              children: [
                const ListTileWidget(
                  title: 'Notifications',
                  iconData: Icons.alarm,
                  size: 25,
                iconColor:  ColorsValue.greyColor,
                  route: RouteManagement.goToNotifications,
                ),
                DividerWidget(),
                const ListTileWidget(
                  title: 'Help',
                  iconData: Icons.lock,
                   size: 25,
                    iconColor:  ColorsValue.greyColor,
                  route: RouteManagement.goToHelp,
                ),
                DividerWidget(),
                const ListTileWidget(
                  iconData: Icons.help,
                  title: 'FAQs',
                   size: 25,
                    iconColor:  ColorsValue.greyColor,
                  route: RouteManagement.goToFaqs,
                ),
                DividerWidget(),
              ],
            ),*/
          ),
      );
}

