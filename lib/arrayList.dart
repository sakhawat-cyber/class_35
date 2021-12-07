// ignore: file_names
import 'package:array1/contectDetail.dart';
import 'package:flutter/material.dart';

class arrayList extends StatefulWidget {
  @override
  _arrayListState createState() => _arrayListState();
}

class _arrayListState extends State<arrayList> {
  final List _peopleContect = [
    {
      "Name": "Sayed",
      "Phone": "01865929097",
      "Image": "asset/85px-National_emblem_of_Bangladesh.svg.png"
    },
    {
      "Name": "ramu",
      "Phone": "01865929099",
      "Image": "asset/125px-Flag_of_Bangladesh.svg.png"
    },
    {
      "Name": "sad",
      "Phone": "01865929197",
      "Image": "asset/250px-Khulna_Division_districts_map.png"
    },
    {
      "Name": "Saed",
      "Phone": "018659097",
      "Image": "asset/300px-Bangladesh_divisions_bn.svg (1).png"
    },
    {
      "Name": "Sayd",
      "Phone": "018659297",
      "Image": "asset/300px-Bangladesh_divisions_bn.svg.png"
    },
    {
      "Name": "Syed",
      "Phone": "01865929097",
      "Image": "asset/480px-Flag_of_Bangladesh.svg.png"
    },
    {
      "Name": "Sayed",
      "Phone": "018697",
      "Image": "asset/480px-National_emblem_of_Bangladesh.svg.png"
    },
    {
      "Name": "Saye",
      "Phone": "01865929097",
      "Image": "asset/800px-Map_Bangladesh_RoadRail.png"
    },
    {
      "Name": "Ayed",
      "Phone": "01929097",
      "Image": "asset/800px-Un-bangladesh.png"
    },
    {
      "Name": "Yed",
      "Phone": "01865097",
      "Image": "asset/134322sylhet-division.jpg"
    },
    {
      "Name": "Sed",
      "Phone": "01865097",
      "Image": "asset/Bangladesh_(orthographic_projection).svg.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Array List"),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: _peopleContect.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  contectDeatail(_peopleContect[index])));
                    },
                    leading: CircleAvatar(
                      radius: 30.0,
                      backgroundColor: Colors.green[30],
                      backgroundImage: ExactAssetImage(
                        _peopleContect[index]["Image"],
                      ),
                      //child: Text(_peopleContect[index]["Name"][0]),
                      //child: backgroundImage()
                      //Image.asset(_peopleContect[index]["Image"],),
                    ),
                    title: Text(_peopleContect[index]["Name"]),
                    subtitle: Text(_peopleContect[index]["Phone"]),
                  )
                ],
              );
            }),
      ),
    );
  }
}
