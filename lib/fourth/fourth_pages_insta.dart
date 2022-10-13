import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_2_figma_2/pages_instagram/account_pages.dart';
import 'package:flutter_2_figma_2/pages_instagram/home_pages.dart';
import 'package:flutter_2_figma_2/pages_instagram/reels_pages.dart';
import 'package:flutter_2_figma_2/pages_instagram/search_pages.dart';
import 'package:flutter_2_figma_2/pages_instagram/shop_pages.dart';

class FourthPage extends StatefulWidget {
  const FourthPage({Key? key}) : super(key: key);

  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {

  int _selectedindex=0;
  void _navigateBottomNavBar(int index){
    setState(() {
     _selectedindex=index; 
    });
  }
  final List<Widget>_children=[
      Userhome(),
      Usersearch(),
      Userreels(),
      Usershop(),
      Useraccount(),     
  ];
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: _children[_selectedindex],
      

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedindex,
        onTap: _navigateBottomNavBar,
        items: [
 BottomNavigationBarItem(icon:Icon(Icons.home),label: 'home'),
  BottomNavigationBarItem(icon:Icon(Icons.search),label: 'search'),
   BottomNavigationBarItem(icon:Icon(Icons.video_call),label: 'reels'),
    BottomNavigationBarItem(icon:Icon(Icons.shop),label: 'shop'),
     BottomNavigationBarItem(icon:Icon(Icons.person),label: 'account',backgroundColor: Colors.black),
      ]),

      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.pushNamed(context,'/facebook');
      }),
    );
  }
}