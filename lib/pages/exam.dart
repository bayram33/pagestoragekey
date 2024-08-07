import "package:flutter/material.dart";

class ExamPage extends StatefulWidget {
  const ExamPage({super.key});

  @override
  State<ExamPage> createState() => _ExamPageState();
}

class _ExamPageState extends State<ExamPage> {
  PageStorageKey storageListView = const PageStorageKey("value_of_listview");

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      key: storageListView,
      itemExtent: 200,
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.all(10),
          child: Material(
            elevation: 20,
            color: index % 2 == 0
                ? Colors.grey.shade200
                : Colors.lightGreenAccent.shade100,
            child: Center(child: Text((index + 1).toString())),
          ),
        );
      },
    );
  }
}
