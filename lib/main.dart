import 'package:eatos/service_locator.dart';
import 'package:eatos/ui/screens/dashboard/home.dart';
import 'package:eatos/ui/theme/light_theme.dart';
import 'package:flutter/material.dart';

void main()
{
  serviceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      home: const Home(),
    );
  }
}
