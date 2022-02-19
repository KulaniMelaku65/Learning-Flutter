import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BizCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Business Card",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.blueGrey.shade100,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[_getCard(), _getAvatar()]),
      ),
    );
  }

  Container _getCard() {
    return Container(
      width: 350,
      height: 200,
      margin: EdgeInsets.all(45.0),
      decoration: BoxDecoration(
          color: Colors.blueGrey.shade100,
          borderRadius: BorderRadius.circular(14.5)),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Kulani Melaku",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            Text("Fullstack Developer"),
            Text("kulanimelaku@gmail.com")
          ]),
    );
  }

  Container _getAvatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          border: Border.all(color: Colors.redAccent, width: 1.2),
          image: DecorationImage(
              image: NetworkImage("https://picsum.photos/id/0/300/300"),
              fit: BoxFit.cover)),
    );
  }
}
