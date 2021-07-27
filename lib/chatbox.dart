import 'package:flutter/material.dart';

class ChatBox extends StatelessWidget {
  final String imageurl;
  final String name;
  final String text;
  final String time;

  ChatBox({required this.imageurl,required this.name,required this.text,required this.time});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          imageurl,
          height: 80,
          width: 80,
        ),
        SizedBox(
          width: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              text,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              width: 50,
            ),
          ],
        ),
        Spacer(),
        Text(
          time,
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
