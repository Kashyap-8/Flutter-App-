import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: ProfileEarth(),
));

class ProfileEarth extends StatelessWidget {
  const ProfileEarth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[700],
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        backgroundColor: Colors.teal[900],
        elevation: 0.5,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/kash.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.black,
            ),
            Text(
              'Name',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
                fontSize: 14.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              'Kashyap Khatri',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0,),
            Text(
              'Streak',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
                fontSize: 14.0,
              ),
            ),
            Text(
              '4 days',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0,),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.black,
                ),
                SizedBox(width:10.0),
                Text(
                    'Khatrks17@juniata.edu',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      letterSpacing: 1.5,
                ),
                ),

              ],
            ),
            SizedBox(height: 20.0,),
            Row(
              children: <Widget>[
                Icon(
                  Icons.notification_important,
                  color: Colors.black,
                ),
                SizedBox(width:10.0),
                Text(
                  'Important Reminders',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    letterSpacing: 1.5,
                  ),

                )
              ],
            ),
            SizedBox(height: 20.0,),
            Row(
              children: <Widget>[
                Icon(
                  Icons.settings_applications,
                  color: Colors.black,
                ),
                SizedBox(width:10.0),
                Text(
                  'Account Settings',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    letterSpacing: 1.5,
                  ),
                )
              ],
            ),
            SizedBox(height: 20.0,),
            Row(
              children: <Widget>[
                Icon(
                  Icons.thumb_up_off_alt,
                  color: Colors.black,
                ),
                SizedBox(width:10.0),
                Text(
                  'Recommend',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    letterSpacing: 1.5,
                  ),
                )
              ],
            ),
            SizedBox(height: 20.0,),
            Row(
              children: <Widget>[
                Icon(
                  Icons.note_outlined,
                  color: Colors.black,
                ),
                SizedBox(width:10.0),
                Text(
                  'Feedback & Support',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    letterSpacing: 1.5,
                  ),
                )
              ],
            ),
            Divider(
              height: 70.0,
              color: Colors.black,
            ),
          ]
        ),

      )
    );
  }
}
