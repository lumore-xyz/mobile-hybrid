import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lumore/components/preferences/interestedin.dart';
import 'package:lumore/screens/pages/preferencesscreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    // Status bar color
    statusBarColor: Colors.yellowAccent,

    // Status bar brightness (for Android: dark icons)
    statusBarIconBrightness: Brightness.dark,

    // Status bar brightness (for iOS: dark icons)
    statusBarBrightness: Brightness.dark,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lumore',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const InterestedInPref(),
    );
  }
}