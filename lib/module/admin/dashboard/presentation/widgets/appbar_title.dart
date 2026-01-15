import 'package:flutter/material.dart';

class AdminAppBarTitle extends StatelessWidget {
  const AdminAppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Welcome 👋',
          style: TextStyle(color: Colors.white70, fontSize: 12),
        ),
        Text(
          "userName",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

class ImageAvatar extends StatelessWidget {
  const ImageAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 22,
      backgroundColor: Colors.white,
      child: Icon(Icons.person, color: Colors.black),
    );
  }
}
