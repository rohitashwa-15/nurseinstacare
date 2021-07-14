import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nurseinstacare/app/app.dart';
import 'package:nurseinstacare/app/pages/profile/profile_view.dart';

class CustomNavigationBar extends StatefulWidget {
  CustomNavigationBar({Key? key}) : super(key: key);

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
      goToPage(index);
    });
  }

  void goToPage(index) {
    Get.off(_widgetOptions[index]);
  }

  @override
  Widget build(BuildContext context) => BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(IconConstants.helpChatIcon),
            label: StringConstants.appoinments,
          ),
          BottomNavigationBarItem(
            icon: Image.asset(IconConstants.patientsIcon),
            label: StringConstants.patients,
          ),
          BottomNavigationBarItem(
            icon: Image.asset(IconConstants.patientsIcon),
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
      );
}
