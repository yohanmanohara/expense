
import 'package:flutter/material.dart';






class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: CircularProgressIndicator(
          color: Colors.blue, // You can change the color of the spinner
        ),
      ),
    );
  }
}