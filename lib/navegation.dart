
import 'package:flutter/material.dart';
class DashBoardActivity extends StatefulWidget {
  const DashBoardActivity({Key? key}) : super(key: key);

  @override
  State<DashBoardActivity> createState() => _DashBoardActivityState();
}





class _DashBoardActivityState extends State<DashBoardActivity> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BottomNavigationBar"),
        backgroundColor: Colors.blueGrey,),
      body: Container(child: Center(child: _widgetOptions.elementAt(_selectedIndex),),),
      bottomNavigationBar: CreateBottombar(context),
    );
  }


  final _widgetOptions = [

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Container CreateBottombar(BuildContext context) {
    return Container(
      //add ClipRRect widget for Round Corner
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(24),
          topLeft: Radius.circular(24),
        ),
        child: BottomNavigationBar(
          //add background color
          backgroundColor: Colors.brown,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
