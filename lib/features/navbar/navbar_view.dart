import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/utils/app_colors.dart';
import 'package:flutter_application_2/features/home/presentaion/view/home_view.dart';
import 'package:flutter_svg/svg.dart';

class NavbarView extends StatefulWidget {
  const NavbarView({super.key});

  @override
  State<NavbarView> createState() => _NavbarViewState();
}

class _NavbarViewState extends State<NavbarView> {
  @override
  int _index = 0;
  final List<Widget> _pages = [
    const HomeView(),
    const HomeView(),
    const HomeView(),
    const HomeView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_index],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _index,
          onTap: (value) {
            setState(() {
              _index = value;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/home.svg'),
                activeIcon: SvgPicture.asset(
                  'assets/home.svg',
                  colorFilter:
                      ColorFilter.mode(AppColors.blackcolor, BlendMode.srcIn),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/save.svg'),
                activeIcon: SvgPicture.asset(
                  'assets/save.svg',
                  colorFilter:
                      ColorFilter.mode(AppColors.blackcolor, BlendMode.srcIn),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/noti.svg'),
                activeIcon: SvgPicture.asset(
                  'assets/noti.svg',
                  colorFilter:
                      ColorFilter.mode(AppColors.blackcolor, BlendMode.srcIn),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/profile.svg'),
                activeIcon: SvgPicture.asset(
                  'assets/profile.svg',
                  colorFilter:
                      ColorFilter.mode(AppColors.blackcolor, BlendMode.srcIn),
                ),
                label: ''),
          ]),
    );
  }
}
