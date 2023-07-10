import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:jarnama_app/app/app.dart';
import 'firebase_options.dart';

Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}
