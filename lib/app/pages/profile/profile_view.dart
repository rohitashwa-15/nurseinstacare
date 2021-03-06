import 'package:feature_discovery/feature_discovery.dart';
import 'package:flutter/material.dart';
import 'package:nurseinstacare/app/app.dart';

/// A PROFILE screen to view and edit user details.
class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => FeatureDiscovery(
    child: Scaffold(
          body: Padding(
            padding: Dimens.edgeInsets16,
            child: Column(
               key: const Key('profile-view'),
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                        width: Dimens.hundred,
                        child: Image.asset(IconConstants.userAvatarIcon)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dona Luiz',
                          style: Styles.boldblack16,
                        ),
                        Text(
                          'sensire id : 1234567890',
                          style: Styles.grey16,
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: ColorsValue.greyColor,
                      ),
                      borderRadius: BorderRadius.circular(Dimens.ten),
                    ),
                    child: Padding(
                      padding: Dimens.edgeInsets10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: Dimens.edgeInsets5,
                            child: Image.asset(
                              IconConstants.coinIcon,
                            ),
                          ),
                          Dimens.boxWidth10,
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '2376 Points',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: Dimens.sixTeen),
                                ),
                                Text(
                                  'Incentives',
                                  style: TextStyle(
                                      color: ColorsValue.greyColor,
                                      fontSize: Dimens.fourteen),
                                ),
                              ],
                            ),
                          ),
                          Image.asset(IconConstants.backIcon),
                        ],
                      ),
                    )),
                ListTileWidget(
                  title:
                      StringConstants.profile + ' ' + StringConstants.information,
                  listIcon: IconConstants.userIcon,
                ),
                ListTileWidget(
                  title: StringConstants.my + ' ' + StringConstants.availability,
                  listIcon: IconConstants.calenderIcon,
                ),
                ListTileWidget(
                  title: StringConstants.settings,
                  listIcon: IconConstants.settingsIcon,
                  route: RouteManagement.goToSettings,
                ),
              ],
            ),
          ),
          bottomNavigationBar: const CustomNavigationBar(),
        ),
  );
}
