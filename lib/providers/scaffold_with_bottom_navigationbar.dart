import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:money_rise/providers/bottom_navigation_provider.dart';
import 'package:money_rise/theme/color.dart';

class ScaffoldWithBottomNavBar extends ConsumerStatefulWidget {
  const ScaffoldWithBottomNavBar({Key? key, required this.child})
      : super(key: key);
  final Widget child;

  @override
  ConsumerState<ScaffoldWithBottomNavBar> createState() =>
      _ScaffoldWithBottomNavBarState();
}

final tabs = [
  ScaffoldWithNavBarTabItem(
    activeIcon: Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        color: AppColor.chartreUse,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Image.asset("assets/images/home.png"),
    ),
    bgColor: AppColor.white,
    icon: Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: AppColor.black),
      ),
      child: Image.asset(
        "assets/images/home.png",
      ),
    ),
    initialLocation: "/home",
    label: 'Home',
  ),
  ScaffoldWithNavBarTabItem(
    activeIcon: Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        color: AppColor.chartreUse,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Image.asset("assets/images/message.png"),
    ),
    bgColor: AppColor.white,
    icon: Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: AppColor.black),
      ),
      child: Image.asset("assets/images/message.png"),
    ),
    initialLocation: "/message",
    label: 'Message',
  ),
  ScaffoldWithNavBarTabItem(
    activeIcon: Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        color: AppColor.chartreUse,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Image.asset("assets/images/profile.png"),
    ),
    bgColor: AppColor.white,
    icon: Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: AppColor.black),
      ),
      child: Image.asset("assets/images/profile.png"),
    ),
    initialLocation: "/my_profile",
    label: 'Profile',
  ),
];

class _ScaffoldWithBottomNavBarState
    extends ConsumerState<ScaffoldWithBottomNavBar> {
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  // callback used to navigate to the desired tab
  void _onItemTapped(BuildContext context, int tabIndex) {
    ref.read(bottomNavigationProvider.notifier).setPosition(tabIndex);

    var tab = tabs.elementAt(tabIndex);

    context.go(tab.initialLocation);
  }

  // int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var currentPosition = ref.watch(bottomNavigationProvider);

    return Scaffold(
      extendBody: true,
      key: _key,
      body: SafeArea(
        bottom: false,
        child: widget.child,
      ),
      // appBar: AppBar(
      //   key: _key,
      // ),
      // backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColor.burlyWood,
        elevation: 0,

        currentIndex: currentPosition,
        onTap: (index) => _onItemTapped(context, index),
        // currentIndex: currentPosition,
        // onTap: (index) {
        //   setState(() {
        //     currentPosition = index;
        //   });
        // },

        items: tabs,

        // hasNotch: true,
      ),
    );
  }
}

class ScaffoldWithNavBarTabItem extends BottomNavigationBarItem {
  ScaffoldWithNavBarTabItem({
    required this.initialLocation,
    required Widget icon,
    required String label,
    required Widget activeIcon,
    required Color bgColor,
  }) : super(
          icon: icon,
          label: label,
          backgroundColor: bgColor,
          activeIcon: activeIcon,
        );

  final String initialLocation;
}
