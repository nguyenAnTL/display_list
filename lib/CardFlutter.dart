import 'dart:math';

import 'package:flutter/material.dart';
import 'package:list_flutter/ListFlut.dart';

class CardFlutter  extends StatelessWidget {

  ListFlut? _listFlut;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
  Card showCard(_listFlut){
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Tên: ' + _listFlut.name, style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Text('Giới Tính: ' + (_listFlut.gender ? 'Nam' : 'Nữ'), style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Text('Điểm: ' + _listFlut.score.toString(), style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}

