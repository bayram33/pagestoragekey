import "package:flutter/material.dart";
import "../model/data.dart";

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  List<Data> allInfos = [
    Data(
      title: "Who am I ?",
      content: "Abe valla biz kurumsal iş yapan bir şirketiz looo",
      isActive: false,
    ),
    Data(
      title: "What are we doing ?",
      content: "Ne iş gelirse onu yapıyoruz valla kurban",
      isActive: false,
    ),
    Data(
      title: "How many employes are working in the company ?",
      content: "He qurban kaç kişi vardır bende bilmiyem loo",
      isActive: false,
    ),
    Data(
      title: "Who am I ?",
      content: "Abe valla biz kurumsal iş yapan bir şirketiz looo",
      isActive: false,
    ),
    Data(
      title: "What are we doing ?",
      content: "Ne iş gelirse onu yapıyoruz valla kurban",
      isActive: false,
    ),
    Data(
        title: "How many employes are working in the company ?",
        content: "He qurban kaç kişi vardır bende bilmiyem loo",
        isActive: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: allInfos.length,
        itemBuilder: (context, index) {
          return ExpansionTile(
            key: PageStorageKey(index),
            initiallyExpanded: allInfos[index].isActive,
            onExpansionChanged: (bool expanded) {
              setState(() {
                allInfos[index].isActive = expanded;
              });
            },
            title: Text(allInfos[index].title),
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: double.infinity,
                  color: index % 2 == 0 ? Colors.deepOrange : Colors.tealAccent,
                  child: Center(child: Text(allInfos[index].content)),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
