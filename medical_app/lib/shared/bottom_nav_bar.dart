import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical_app/screen/history/history_screen.dart';
import 'package:medical_app/screen/home/home_page.dart';
import 'package:medical_app/screen/message/message_screen.dart';
import 'package:medical_app/screen/profile/profile_screen.dart';
import 'package:medical_app/screen/protection/protection_screen.dart';
import 'package:medical_app/theme/thema.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int index = 0;
  final screens = const [
    HomePage(),
    History(),
    ProtectionScreen(),
    MessageScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          elevation: 4,
          indicatorColor: colorPurple,
        ),
        child: NavigationBar(
          selectedIndex: index,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          onDestinationSelected: (index) => setState(() => this.index = index),
          height: 60,
          backgroundColor: colorWhite,
          destinations: [
            NavigationDestination(
              icon: SvgPicture.asset(
                "assets/svg/home.svg",
              ),
              label: "",
            ),
            NavigationDestination(
              icon: SvgPicture.asset(
                "assets/svg/assignment.svg",
              ),
              label: "",
            ),
            NavigationDestination(
              icon: SvgPicture.asset(
                "assets/svg/verified_user.svg",
              ),
              label: "",
            ),
            NavigationDestination(
              icon: SvgPicture.asset(
                "assets/svg/chat.svg",
              ),
              label: "",
            ),
            NavigationDestination(
              icon: SvgPicture.asset(
                "assets/svg/profil.svg",
              ),
              label: "",
            ),
          ],
        ),
      ),
    );
  }
}
