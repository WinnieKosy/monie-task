import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui/utils/app_icons.dart';
import 'package:ui/view/home/home_page.dart';

import '../contant/app_colors.dart';


class HomeNavScreen extends StatefulWidget {
  const HomeNavScreen({super.key});

  @override
  State<HomeNavScreen> createState() => _HomeNavScreenState();
}

class _HomeNavScreenState extends State<HomeNavScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    Container(),
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        // height: Platform.isAndroid
        //     ? (kBottomNavigationBarHeight + 20)
        //     : (kBottomNavigationBarHeight + 50),
        child: BottomNavigationBar(
          onTap: (index) => setState(() {
            _selectedIndex = index;
          }),
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          selectedIconTheme: const IconThemeData(
            color: AppColors.primary,
          ),
          unselectedIconTheme: const IconThemeData(
            color: AppColors.grey,
          ),
          selectedItemColor: AppColors.black,
          unselectedItemColor: AppColors.grey,
          selectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.w600, color: AppColors.black),
          unselectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.w500, color: AppColors.grey),
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppIcons.homeOne,
                color: _selectedIndex == 0
                    ? AppColors.primary
                    : AppColors.grey,
                width: 32,
                height: 32,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppIcons.ticket,
                color:_selectedIndex == 1
                    ? AppColors.primary
                    : AppColors.grey,
                width: 32,
                height: 32,
              ),
              label: 'Voucher',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppIcons.wallet,
                color:_selectedIndex == 2
                    ? AppColors.primary
                    : AppColors.grey,
                width: 32,
                height: 32,
              ),
              label: 'Wallet',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppIcons.settings,
                color:_selectedIndex == 3
                    ? AppColors.primary
                    : AppColors.grey,
                width: 32,
                height: 32,
              ),
              label: 'Settings',
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
