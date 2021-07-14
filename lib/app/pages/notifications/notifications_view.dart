import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app.dart';

/// The Notifications view which will show the Notifications screen and perform the basic
/// ui work.
class NotificationsView extends StatelessWidget {
   const NotificationsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => GetBuilder<NotificationsController>(
        builder: (_controller) => Scaffold(
          
          backgroundColor: ColorsValue.primaryColorRgb,
          appBar: CustomAppBar(title: StringConstants.notifications,),
          body: SizedBox(
            child: ListView(
              key: const Key('notifications-view'),
              children: [
                SwitchTileWidget(
                  title: StringConstants.playSoundForNotifications,
                 
                ),
                DividerWidget(),
                 SwitchTileWidget(
                  title: StringConstants.playSoundForAlerts,
                 
                ),
                DividerWidget(),
                SwitchTileWidget(
                  title: StringConstants.playSoundForMessages,
                 
                ),
                DividerWidget(),
                
              ],
            ),
          ),
        ),
      );
}
