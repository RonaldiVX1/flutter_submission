import 'package:basic1/homepage.dart';
import 'package:flutter/material.dart';

class InputLogin extends StatefulWidget {
  const InputLogin({Key? key}) : super(key: key);

  @override
  _InputLoginState createState() => _InputLoginState();
}

class _InputLoginState extends State<InputLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
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
                    Text('Login.',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                            color: Colors.blue)),
                    SizedBox(
                      height: 15,
                    ),
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
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50, top: 20),
              child: TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Username',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                    ),
                    fillColor: Colors.blue),
                obscureText: false,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50, top: 20),
              child: TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                    ),
                    fillColor: Colors.blue),
                obscureText: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueAccent,
                  onPrimary: Colors.white,
                  minimumSize: Size(310, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  shadowColor: Colors.black,
                  elevation: 5,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => ChatPage()),
                  );
                },
                child: const Text('Submit'),
              ),
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
