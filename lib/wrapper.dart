import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import 'prescription.dart';
import 'profile.dart';
import 'reminder.dart';
import 'task_one.dart';

class WrapperView extends StatelessWidget {
  const WrapperView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PersistentTabController _controller;

    _controller = PersistentTabController(initialIndex: 0);
    return PersistentTabView(
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears.
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style3, // Choose the nav bar style with this property.
    );
  }
}

List<Widget> _buildScreens() {
  return [TaskOne(), Reminder(), Prescription(), Profile()];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: ImageIcon(AssetImage('assets/img/icon_feather_home.png')),
      title: ("Home"),
      activeColor: Colors.blue,
      inactiveColor: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      icon: ImageIcon(AssetImage('assets/img/icon_feather_clock.png')),
      title: ("Reminder"),
      activeColor: Colors.blue,
      inactiveColor: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      icon: ImageIcon(AssetImage('assets/img/icon_feather_prescription.png')),
      title: ("Prescription"),
      activeColor: Colors.blue,
      inactiveColor: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      icon: ImageIcon(AssetImage('assets/img/icon_feather_person.png')),
      title: ("Account"),
      activeColor: Colors.blue,
      inactiveColor: Colors.grey,
    ),
  ];
}
