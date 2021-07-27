import 'package:basic1/chatbox.dart';
import 'package:basic1/login_page.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          size: 40,
        ),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 70,
              ),
              Image.asset(
                'assets/9.png',
                height: 100,
                width: 100,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Owl Birdy',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Owl In California",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(30),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(50),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Friends",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    GestureDetector(
                      child: ChatBox(
                        imageurl: 'assets/6.png',
                        name: 'Woogie',
                        text: 'Hello, I am Giraffe',
                        time: '2:30',
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ChatBox(
                      imageurl: 'assets/7.png',
                      name: 'Pinguro',
                      text: 'Hello, I am Pinguin',
                      time: 'Yest',
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ChatBox(
                      imageurl: 'assets/5.png',
                      name: 'Zebracross',
                      text: 'Hello, I am Zebra',
                      time: 'Now',
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ChatBox(
                      imageurl: 'assets/10.png',
                      name: 'Monkey',
                      text: 'Hello, I am Monkey',
                      time: '14:00',
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ChatBox(
                      imageurl: 'assets/11.png',
                      name: 'Pinda Panda',
                      text: 'Hello, I am Panda',
                      time: '15:30',
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
