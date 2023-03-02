// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:app_web_view/ui/screens/screen_home.dart';

class UiApp extends StatelessWidget {
  const UiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: const ScreenHome(),
    );
  }
}
