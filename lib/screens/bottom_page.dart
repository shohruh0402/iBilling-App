import 'package:contackt/components/const_img_icons.dart';
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
        unselectedItemColor: Colors.grey,
        fixedColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
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
                    ? Image.asset(IconImgClass.documentLight)
                    : Image.asset(IconImgClass.documentDarck),
              ),
              label: 'Contracts'),
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: SizedBox(
                height: he(20),
                width: wi(18),
                child: pageIndex == 1
                    ? Image.asset(IconImgClass.historyLight)
                    : Image.asset(IconImgClass.historyDarck),
              ),
              label: 'History'),
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: SizedBox(
                height: he(20),
                width: wi(18),
                child: pageIndex == 2
                    ? Image.asset(IconImgClass.newLight)
                    : Image.asset(IconImgClass.newDarck),
              ),
              label: 'New'),
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: SizedBox(
                height: he(20),
                width: wi(18),
                child: pageIndex == 3
                    ? Image.asset(IconImgClass.savedLight)
                    : Image.asset(IconImgClass.savedDarck),
              ),
              label: 'Saved'),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: SizedBox(
              height: he(20),
              width: wi(18),
              child: pageIndex == 4
                  ? Image.asset(IconImgClass.profileLight)
                  : Image.asset(IconImgClass.profileDarck),
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
