import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reddit/features/auth/screens/login_screen.dart';
import 'package:reddit/theme/pallete.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your applicationclea
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'reddit_clone',
      debugShowCheckedModeBanner: false,
      theme: Pallete.darkModeAppTheme,
      home: const LoginScreen(),
    );
  }
}
