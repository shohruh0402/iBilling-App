import 'package:contackt/screens/pages/contract_page.dart';
import 'package:contackt/screens/pages/history_page.dart';
import 'package:contackt/screens/pages/new_page.dart';
import 'package:contackt/screens/pages/profile_page.dart';
import 'package:contackt/screens/pages/saved_page.dart';
import 'package:contackt/sizeconfige/sizeconfig.dart';
import 'package:flutter/material.dart';

class BottomNavigatorPage extends StatefulWidget {
  const BottomNavigatorPage({Key? key}) : super(key: key);

  @override
  State<BottomNavigatorPage> createState() => _BottomNavigatorPageState();
}

class _BottomNavigatorPageState extends State<BottomNavigatorPage> {
  List pages = [
    const ContaractPage(),
    const HistoryPage(),
    const NewPage(),
    const SavedPage(),
    const ProfilePage(),
  ];
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        onTap: (value) {
          setState(() {
            pageIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: SizedBox(
                height: he(20),
                width: wi(18),
                child: pageIndex == 0
                    ? Image.asset('assets/icons/Document_light.png')
                    : Image.asset('assets/icons/Document_darck.png'),
              ),
              label: 'Contracts'),
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: SizedBox(
                height: he(20),
                width: wi(18),
                child: pageIndex == 1
                    ? Image.asset('assets/icons/Time Circle_light.png')
                    : Image.asset('assets/icons/Time Circle_darck.png'),
              ),
              label: 'History'),
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: SizedBox(
                height: he(20),
                width: wi(18),
                child: pageIndex == 2
                    ? Image.asset('assets/icons/Plus_light.png')
                    : Image.asset('assets/icons/Plus_darck.png'),
              ),
              label: 'New'),
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: SizedBox(
                  height: he(20),
                  width: wi(18),
                  child: pageIndex == 3
                      ? Image.asset('assets/icons/Bookmark_light.png')
                      : Image.asset('assets/icons/Bookmark_darck.png')),
              label: 'Saved'),
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: SizedBox(
                  height: he(20),
                  width: wi(18),
                  child: pageIndex == 4
                      ? Image.asset('assets/icons/Profile_light.png')
                      : Image.asset('assets/icons/Profile_darck.png')),
              label: 'Profile'),
        ],
      ),
    );
  }
}
