import 'package:flutter/material.dart';
import 'consr_routes.dart';
import 'based_router.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: route1,
      onGenerateRoute: RouteClass.generator,
    );
  }
}
