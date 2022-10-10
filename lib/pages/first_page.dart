import 'package:flutter/material.dart';
import 'package:kucingku_hilang/pages/detail_laporan.dart';
import 'package:kucingku_hilang/pages/history_laporan.dart';
import 'package:kucingku_hilang/pages/laporkan_kehilangan.dart';
import 'package:kucingku_hilang/pages/list_laporan.dart';
import 'package:kucingku_hilang/pages/masuk.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    ListLaporan(),
    HistoryLaporan(),
    LaporkanKehilangan(),
    Masuk(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'List',
            backgroundColor: Color.fromRGBO(250, 153, 121, 1.0),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
            backgroundColor: Color.fromRGBO(250, 153, 121, 1.0),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit_note_outlined),
            label: 'Lapor',
            backgroundColor: Color.fromRGBO(250, 153, 121, 1.0),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Color.fromRGBO(250, 153, 121, 1.0),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedLabelStyle: GoogleFonts.poppins(
          textStyle: const TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
        ),
        unselectedLabelStyle: GoogleFonts.poppins(
          textStyle: const TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
        ),
        iconSize: 26,
        unselectedItemColor: const Color.fromRGBO(248, 217, 201, 1.0),
        selectedItemColor: const Color.fromRGBO(252, 252, 250, 1.0),
        onTap: _onItemTapped,
      ),
    );
  }
}