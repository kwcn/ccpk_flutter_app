import 'package:flutter/material.dart';
import 'home/home_main.dart';
import 'car/car_main.dart';
import 'bbs/bbs_main.dart';
import 'mall/mall_main.dart';
import 'mine/mine_main.dart';

class App extends StatefulWidget {
  @override
  AppState createState() => AppState();
}

class AppState extends State<App> {
  int _selectedIndex = 0;

  HomeMainPage homeMainPage;
  CarMainPage carMainPage;
  BBSMainPage bbsMainPage;
  MallMainPage mallMainPage;
  MineMainPage mineMainPage;

  currentPage() {
    switch(_selectedIndex) {
      case 0:
        if (homeMainPage == null) {
          homeMainPage = new HomeMainPage();
        }
        return homeMainPage;

      case 1:
        if (carMainPage == null) {
          carMainPage = new CarMainPage();
        }
        return carMainPage;

      case 2:
        if (bbsMainPage == null) {
          bbsMainPage = new BBSMainPage();
        }
        return bbsMainPage;

      case 3:
        if (mallMainPage == null) {
          mallMainPage = new MallMainPage();
        }
        return mallMainPage;

      case 4:
        if (mineMainPage == null) {
          mineMainPage = new MineMainPage();
        }
        return mineMainPage;

      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentPage(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              title: new Text(
                  '首页',
              style: TextStyle(
                color: _selectedIndex == 0 ? Colors.blue : Color(0xFF999999)
              ),),
              icon: _selectedIndex == 0 ? Image.asset('assets/icons/main_index_1_select.png', width: 32.0, height: 28.0,)
              : Image.asset('assets/icons/main_index_1_unselect.png', width: 32.0, height: 28.0,)),
          BottomNavigationBarItem(
              title: new Text(
                '爱车',
                style: TextStyle(
                    color: _selectedIndex == 1 ? Colors.blue : Color(0xFF999999)
                ),),
              icon: _selectedIndex == 1 ? Image.asset('assets/icons/main_index_2_select.png', width: 32.0, height: 28.0,)
                  : Image.asset('assets/icons/main_index_2_unselect.png', width: 32.0, height: 28.0,)),
          BottomNavigationBarItem(
              title: new Text(
                '社区',
                style: TextStyle(
                    color: _selectedIndex == 2 ? Colors.blue : Color(0xFF999999)
                ),),
              icon: _selectedIndex == 2 ? Image.asset('assets/icons/main_index_3_select.png', width: 32.0, height: 28.0,)
                  : Image.asset('assets/icons/main_index_3_unselect.png', width: 32.0, height: 28.0,)),
          BottomNavigationBarItem(
              title: new Text(
                '商城',
                style: TextStyle(
                    color: _selectedIndex == 3 ? Colors.blue : Color(0xFF999999)
                ),),
              icon: _selectedIndex == 3 ? Image.asset('assets/icons/main_index_4_select.png', width: 32.0, height: 28.0,)
                  : Image.asset('assets/icons/main_index_4_unselect.png', width: 32.0, height: 28.0,)),
          BottomNavigationBarItem(
              title: new Text(
                '我的',
                style: TextStyle(
                    color: _selectedIndex == 4 ? Colors.blue : Color(0xFF999999)
                ),),
              icon: _selectedIndex == 4 ? Image.asset('assets/icons/main_index_5_select.png', width: 32.0, height: 28.0,)
                  : Image.asset('assets/icons/main_index_5_unselect.png', width: 32.0, height: 28.0,)),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}