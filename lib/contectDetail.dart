import 'package:flutter/material.dart';

class contectDeatail extends StatefulWidget {
  var redyList;
  contectDeatail(this.redyList);

  @override
  State<contectDeatail> createState() => _contectDeatailState(this.redyList);
}

class _contectDeatailState extends State<contectDeatail> {
  var useList;
  _contectDeatailState(this.useList);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contect detaiis"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Image.asset("${useList["Image"]}"),
          SizedBox(
            height: 10,
          ),
          Text(
            "${useList["Name"]}",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text("${useList["Phone"]}"),
        ],
      ),
    );
  }
}
