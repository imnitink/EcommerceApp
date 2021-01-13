import 'package:flutter/material.dart';
class MyNavigationBar extends StatefulWidget {
  MyNavigationBar ({Key key}) : super(key: key);

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar > {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
    Text('Search Page', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
    Text('Profile Page', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home,color: Colors.grey),
                title: Text(''),
                //backgroundColor: Colors.green
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart,color: Colors.grey),
                title: Text(''),
                //backgroundColor: Colors.yellow
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet,color: Colors.grey),
              title: Text(''),
              //backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.markunread_mailbox,color: Colors.grey,),
              title: Text(''),
              //backgroundColor: Colors.blue,
            )
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Color.fromRGBO(4, 15, 79, 1),
          iconSize: 30,
          onTap: _onItemTapped,
          elevation: 1
      );
  }
}