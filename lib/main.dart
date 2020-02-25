import 'package:flutter/material.dart';
import 'package:ui/widgets/info_card.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;

const url = 'https://fahimmuntashir.github.io/';
const email = 'fahim.tech.me@gmail.com';
const phone = '+880 847 784 74';
const location = 'Dhaka, Bangladesh';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[800],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/fahim.jpg'),
            ),
            Text(
              'Fahim Muntashir',
              style: TextStyle(
                fontSize: 40.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Pacifico',
              ),
            ),
            Text(
              'Passionate Developer',
              style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.blueGrey[200],
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Source Sans Pro'),
            ),
            SizedBox(
              height: 20,
              width: 200,
              child: Divider(
                color: Colors.white,
              ),
            ),
            InfoCard(
              text: phone,
              icon: Icons.phone,
              onPressed: () {
                print('fahim');
              },
            ),
            InfoCard(
              text: email,
              icon: Icons.email,
              onPressed: () {
                print('email');
              },
            ),
            InfoCard(
              text: url,
              icon: Icons.web,
              onPressed: () async {
                if (await launcher.canLaunch(url)) {
                  await launcher.launch(url);
                } else {
                  print('error');
                }
              },
            ),
            InfoCard(
              text: location,
              icon: Icons.location_city,
              onPressed: () {
                print('location');
              },
            ),
          ],
        ),
      ),
    );
  }
}
