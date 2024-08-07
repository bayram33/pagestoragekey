import "package:app/pages/draft.dart";
import "package:app/pages/exam.dart";
import "package:app/pages/info.dart";
import "package:app/pages/salepage.dart";
import "package:flutter/material.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  List<Widget> allpages = [
    const SalePage(),
    const InfoPage(),
    const ExamPage(),
    const DraftPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text(" Example of PageStorageKey")),
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
      body: allpages[_currentIndex],
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.add_a_photo_outlined), label: "A"),
        BottomNavigationBarItem(
            icon: Icon(Icons.access_time_outlined), label: "B"),
        BottomNavigationBarItem(icon: Icon(Icons.add_business), label: "C"),
        BottomNavigationBarItem(icon: Icon(Icons.add_alarm), label: "D"),
      ],
      currentIndex: _currentIndex,
      onTap: (value) {
        setState(() {
          _currentIndex = value;
        });
      },
    );
  }
}
