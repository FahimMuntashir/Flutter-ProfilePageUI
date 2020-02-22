import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        print('email');
      },
      child: Card(
        color: Colors.white,
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
        child: ListTile(
          leading: Icon(
            Icons.email,
            color: Colors.teal,
          ),
          title: Text(
            'fahim.tech.me@gmail.com',
            style: TextStyle(
              color: Colors.teal,
              fontSize: 20.0,
              fontFamily: 'Source Sans Pro',
            ),
          ),
        ),
      ),
    );
  }
}


