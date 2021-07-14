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
        'feature1',
        'feature2',
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
        backgroundColor: Colors.lightGreenAccent,
        contentLocation: ContentLocation.trivial,
        title: const Text(
          'This is Button',
          style: TextStyle(fontSize: 20.0),
        ),
        pulseDuration: const Duration(seconds: 1),
        enablePulsingAnimation: true,
        overflowMode: OverflowMode.extendBackground,
        openDuration: const Duration(seconds: 1),
        description:
            const Text('This is Button you can\n add more details heres'),
        tapTarget: const Icon(Icons.navigation),
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Image.asset(
                IconConstants.helpChatIcon,
                color: Colors.grey,
              ),
              label: StringConstants.appoinments,
            ),
            BottomNavigationBarItem(
              icon: Image.asset(IconConstants.patientsIcon),
              label: StringConstants.patients,
            ),
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.chat_bubble_outline_rounded,
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
      );
}
