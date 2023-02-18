import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:wracks/generated/l10n.dart';
import 'package:wracks/constant.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Wracks",
      theme: ThemeData(
        brightness: Brightness.light,
        colorSchemeSeed: kPrimary,
        useMaterial3: true,
      ),
      localizationsDelegates: const <LocalizationsDelegate<Object>>[
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
