import 'package:feature_discovery/feature_discovery.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nurseinstacare/app/app.dart';
import 'package:nurseinstacare/app/pages/profile/profile_view.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const AlertDialog(
      title: Text('Rohit'),
    ),
    const Text('Profile Screen'),
    const ProfileView(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
      // goToPage(index);
    });
  }

  void goToPage(index) {
    Get.off(() => (_widgetOptions[index]));
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      FeatureDiscovery.discoverFeatures(context, <String>[
        'feature3',
        'feature4',
      ]);
    });
  }

  @override
  Widget build(BuildContext context) => DescribedFeatureOverlay(
        featureId: 'feature4',
        targetColor: Colors.white,
        textColor: Colors.black,
        backgroundColor: Colors.white,
        contentLocation: ContentLocation.above,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              IconConstants.patientsIcon,
              width: Dimens.hundred,
              height: Dimens.hundred,
            ),
            Text(
              StringConstants.patients,
              style: Styles.blackBold40,
            ),
          ],
        ),
        pulseDuration: const Duration(seconds: 1),
        enablePulsingAnimation: true,
        overflowMode: OverflowMode.wrapBackground,
        openDuration: const Duration(seconds: 1),
        description: Padding(
          padding: Dimens.edgeInsets10,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipisc elit, sed do eiusmod tempor.'),
              Padding(
                padding: Dimens.getEdgeInsets(
                    Dimens.zero, Dimens.ten, Dimens.zero, Dimens.zero),
                child: SizedBox(
                  width: Dimens.oneHundredTwenty,
                  height: Dimens.fourty,
                  child: const ButtonWidget(
                    title: 'FINISH',
                  ),
                ),
              )
            ],
          ),
        ),
        allowShowingDuplicate: true,
        tapTarget: Image.asset(IconConstants.patientsIcon),
        child: DescribedFeatureOverlay(
          featureId: 'feature3',
          targetColor: Colors.white,
          textColor: Colors.black,
          backgroundColor: Colors.white,
          contentLocation: ContentLocation.trivial,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                IconConstants.helpChatIcon,
                width: Dimens.hundred,
                height: Dimens.hundred,
              ),
              Text(
                StringConstants.chat,
                style: Styles.blackBold40,
              ),
            ],
          ),
          pulseDuration: const Duration(seconds: 1),
          enablePulsingAnimation: true,
          overflowMode: OverflowMode.wrapBackground,
          openDuration: const Duration(seconds: 1),
          description: Padding(
            padding: Dimens.edgeInsets10,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipisc elit, sed do eiusmod tempor.'),
                Padding(
                  padding: Dimens.getEdgeInsets(
                      Dimens.zero, Dimens.ten, Dimens.zero, Dimens.zero),
                  child: SizedBox(
                    width: Dimens.oneHundredTwenty,
                    height: Dimens.fourty,
                    child: const ButtonWidget(
                      title: 'NEXT',
                    ),
                  ),
                )
              ],
            ),
          ),
          allowShowingDuplicate: true,
          tapTarget: Image.asset(
            IconConstants.helpChatIcon,
          ),
          child: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Image.asset(
                  IconConstants.calenderIcon,
                  color: Colors.grey,
                ),
                label: StringConstants.appoinments,
              ),
              BottomNavigationBarItem(
                icon: Image.asset(IconConstants.patientsIcon),
                label: StringConstants.patients,
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  IconConstants.helpChatIcon,
                  color: Colors.grey,
                ),
                label: StringConstants.chat,
              ),
              BottomNavigationBarItem(
                icon: Image.asset(IconConstants.userIcon),
                label: StringConstants.profile,
              ),
            ],
            unselectedLabelStyle: const TextStyle(color: Colors.blue),
            selectedLabelStyle: const TextStyle(color: Colors.blue),
            currentIndex: _selectedIndex,
            onTap: _onItemTap,
            selectedFontSize: 13.0,
            unselectedFontSize: 13.0,
          ),
        ),
      );
}
