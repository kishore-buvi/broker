import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:quik_broker_admin/Home_page.dart';
import 'package:quik_broker_admin/Login_page.dart';
import 'package:quik_broker_admin/Main_page.dart';
import 'package:quik_broker_admin/Welcome_page.dart';
import 'package:quik_broker_admin/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final newTextTheme = Theme.of(context).textTheme.apply(
          bodyColor: const Color.fromARGB(255, 255, 255, 255),
          displayColor: const Color.fromARGB(255, 253, 253, 253),
        );
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Quik broker admin',
        theme: ThemeData(
          colorScheme:
              ColorScheme.fromSeed(seedColor: Color.fromRGBO(4, 28, 50, 1)),
          useMaterial3: true,
        ),
        home: MainPage());
  }
}
