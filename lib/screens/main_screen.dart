import 'package:finance_manager_app/screens/stat_page.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import 'home_screen.dart';
import 'profile_screen.dart';
import 'wallet_screen.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  var _currentIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const StatPage(),
    const ProfilePage(),
    const WalletScreen()
  ];

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xC5353434),
        body: _pages[_currentIndex],
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          child: BottomNavigationBar(
            elevation: 10.5,
            currentIndex: _currentIndex,
            onTap: _onTap,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,
                  size: 35.0,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.query_stats_sharp,
                  size: 35.0,
                ),
                label: 'Stat',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.wallet_sharp,
                  size: 35.0,
                ),
                label: 'Wallet',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_circle_sharp,
                  size: 35.0,
                ),
                label: 'Profile',
              )
            ],
            unselectedItemColor: textColor,
            backgroundColor: Colors.black,
            showUnselectedLabels: true,
            unselectedLabelStyle: const TextStyle(color: textColor),
            type: BottomNavigationBarType.fixed,
          ),
        ));
  }
}



/*
BottomNavigationBar(
        elevation: 10.5,
        currentIndex: _currentIndex,
        onTap: _onTap,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
              size: 25.0,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.query_stats_sharp,
              size: 25.0,
            ),
            label: 'Stat',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.wallet_sharp,
              size: 25.0,
            ),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_sharp,
              size: 25.0,
            ),
            label: 'Profile',
          )
        ],
        unselectedItemColor: textColor,
        backgroundColor: Colors.black,
        showUnselectedLabels: true,
        unselectedLabelStyle: const TextStyle(color: textColor),
        type: BottomNavigationBarType.fixed,
      ),



*/