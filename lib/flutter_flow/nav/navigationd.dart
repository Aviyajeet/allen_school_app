// ignore_for_file: deprecated_member_use

import 'package:allen_school_app/break_page/break_page_widget.dart';
import 'package:allen_school_app/explore_page/explore_page_widget.dart';
import 'package:allen_school_app/test_page/test_page_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../doubts_page/doubts_page_widget.dart';
import '../../programs_page/programs_page_widget.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  int currentIndex = 0;
  //final GlobalKey _bottomNavigationKey = GlobalKey();

  navigateToHomePage() {
    setState(() {
      currentIndex = 0;
    });
  }

  List allScreen = [
    const ExplorePageWidget(),
    const ProgramsPageWidget(),
    const DoubtsPageWidget(),
    const BreakPageWidget(),
    const TestPageWidget(),
  ];

  Future showdialog() async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Are you sure ?"),
            content: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [Text("Do you want to exit?")],
            ),
            actions: [
              ElevatedButton(
                  onPressed: () {
                    SystemNavigator.pop();
                  },
                  child: const Text("Exit")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Cancel")),
            ],
          );
        });
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    // final indexref = ref.watch(index);
    return Scaffold(
      body: allScreen.elementAt(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF192438),
        selectedLabelStyle: const TextStyle(fontSize: 10),
        unselectedLabelStyle: const TextStyle(fontSize: 10),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        //  key: _bottomNavigationKey,
        onTap: (value) {
          setState(() {});
          currentIndex = value;
          // ref.read(index.notifier).botindex(value);
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.menu_book_outlined,
              ),
              label: "Explore"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.chrome_reader_mode,
              ),
              label: "Program"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.quiz,
              ),
              label: "Doubts"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.stream,
              ),
              label: "Break"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.text_snippet_outlined,
              ),
              label: "Tests")
        ],
      ),
    );
  }
}
