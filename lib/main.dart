import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:minute_earth/profile.dart';
import 'list_orgs.dart';


void main() => runApp(MaterialApp(
  initialRoute: '/Home',
  routes: {
    '/': (context) => ProfileEarth(),
    '/Home': (context) => MinuteEarth(),

  },
));

class MinuteEarth extends StatefulWidget {
  const MinuteEarth({Key? key}) : super(key: key);

  @override
  State<MinuteEarth> createState() => _MinuteEarthState();
}

class _MinuteEarthState extends State<MinuteEarth> {
  List<Gist> links = [
    Gist(text:'1', link:'No Poverty'),
    Gist(text: '2', link:'Zero Hunger'),
    Gist(text:'3', link: 'Good Health'),
    Gist(text:'4', link: 'Quality Education'),
    Gist(text:'6', link: 'Clean Water Sanitation'),
    Gist(text:'7', link: 'Affordable Energy'),
    Gist(text:'12', link: 'Responsible Consumption and Production'),
    Gist(text:'13', link: 'Climate Action'),
    Gist(text:'14', link: 'Life Below Water'),
    Gist(text:'15', link: 'Life on Land')
  ];
  Widget listTemplate(Gist){
    return Card(
      margin: EdgeInsets.fromLTRB(16.0,16.0,16.0,0),
      child: Column(
        children: <Widget>[
          Text(
            Gist.text,
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.grey[600],
            ),
          ),
          SizedBox(height: 4.0,),
          Text(
            Gist.link,
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.grey[800],)
          )
        ]

      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MinuteEarth Digest'),
        centerTitle: true,
        backgroundColor: Colors.teal,
        elevation: 0.5,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[

          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/Home');
            },
            icon: Icon(Icons.home),
            alignment: Alignment.bottomCenter,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                icon: Icon(Icons.account_circle),
                alignment: Alignment.bottomRight,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
