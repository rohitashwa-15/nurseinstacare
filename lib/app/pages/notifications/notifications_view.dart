import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app.dart';

/// The Notifications view which will show the Notifications screen and perform the basic
/// ui work.
class NotificationsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) => GetBuilder<NotificationsController>(
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
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'NOTIFICATIONS',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: ColorsValue.blackColor),
                  ),
                ],
              ),
              backgroundColor: ColorsValue.primaryColorRgb,
            ),
          ),
          body: SizedBox(
            child: ListView(
              children: [
                const SwitchTileWidget(
                  title: 'Play sound for notifications',
                 
                ),
                DividerWidget(),
                const SwitchTileWidget(
                  title: 'Play sound for alerts',
                 
                ),
                DividerWidget(),
                const SwitchTileWidget(
                  title: 'Play sound for messages',
                 
                ),
                DividerWidget(),
                
              ],
            ),
          ),
        ),
      );
}
