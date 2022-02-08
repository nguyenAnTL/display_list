import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ListFlut.dart';

void main() {
  runApp(MaterialApp(
    home: ListFlutter(),
  ));
}
class ListFlutter extends StatefulWidget {
  const ListFlutter({Key? key}) : super(key: key);

  @override
  _ListFlutterState createState() => _ListFlutterState();
}

class _ListFlutterState extends State<ListFlutter> {
  List<ListFlut> students = [
    ListFlut('Nguyễn Văn An', true , 10.0),
    ListFlut('Nguyễn Bình An', false, 8.0),
    ListFlut('Huỳnh Tấn Bình', true, 8.5),
    ListFlut('Trần Tiến Dũng', true, 10),
    ListFlut('Nguyễn Thùy Linh', false, 9.5),
    ListFlut('Dương Tuyết Nhi', false, 8.0),
    ListFlut('Dương Minh Quốc', true, 8.5),
    ListFlut('Nguyễn Minh Quân', true, 7.5),
  ];

  Widget show(stud){
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Tên: ' + stud.name, style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Text('Giới Tính: ' + (stud.gender ? 'Nam' : 'Nữ'), style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Text('Điểm: ' + stud.score.toString(), style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Display List Elements'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: students.map((student) => show(student)).toList(),
        ),
      ),
    );
  }
}

