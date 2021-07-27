import 'package:basic1/input_id.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 100,
              right: 140,
              left: 135,
            ),
            child: Center(
              child: Column(
                children: [
                  Image.asset(
                    'assets/emojione_bird.png',
                    width: 140,
                    height: 140,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ),
          Text('Early Bird.',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  color: Colors.blue)),
          SizedBox(
            height: 20,
          ),
          Text(
            'All about Animal.',
            style: TextStyle(
                fontWeight: FontWeight.w300, fontSize: 30, color: Colors.blue),
          ),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.lightBlue,
                onPrimary: Colors.white,
                minimumSize: Size(205, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                shadowColor: Colors.black,
                elevation: 5,
              ),
              onPressed: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InputLogin()),
                  );
                });
              },
              child: Text('Log In'))
        ],
      ),
    );
  }
}
