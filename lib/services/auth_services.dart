// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:toastification/toastification.dart';
import 'package:flutter/material.dart';

class AuthService {
  Future<void> signup({
    required BuildContext context, // Accept BuildContext for toast
    required String email,
    required String password,
  }) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Success toast
      toastification.show(
        context: context,
        title: const Text("Account created successfully!"),
        autoCloseDuration: const Duration(seconds: 3),
        type: ToastificationType.success,
        style: ToastificationStyle.fillColored,
        alignment: Alignment.bottomCenter,
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        primaryColor: Colors.white,
        borderRadius: BorderRadius.circular(8),
      );
    } on FirebaseAuthException catch (e) {
      String message = "An error occurred";
      if (e.code == 'weak-password') {
        message = 'The password provided is too weak.';
      } else if (e.code == 'email-already-in-use') {
        message = 'An account already exists with that email.';
      }

      // Error toast
      toastification.show(
        context: context,
        title: Text('Error: $message'),
        autoCloseDuration: const Duration(seconds: 1),
        type: ToastificationType.error,
        style: ToastificationStyle.fillColored,
        alignment: Alignment.bottomCenter,
        backgroundColor: const Color.fromARGB(137, 194, 68, 68),
        foregroundColor: const Color.fromARGB(255, 0, 0, 0),
        primaryColor: Colors.white,
        borderRadius: BorderRadius.circular(8),
      );
    }
  }
}
