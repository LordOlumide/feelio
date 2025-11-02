import 'package:feelio/src/screens/screen_1/screen_1.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const Feelio());
}

class Feelio extends StatelessWidget {
  const Feelio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Screen1());
  }
}
