import 'package:flutter/material.dart';
import 'package:fooderlich_app/fooderlich_theme.dart';

import 'homepage.dart';

void main() {
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  const Fooderlich({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.dark();
    return MaterialApp(
      theme: theme,
      title: 'Fooderlich',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
