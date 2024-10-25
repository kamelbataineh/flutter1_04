import 'package:flutter/material.dart';
import 'consr_routes.dart';
import 'Screen1.dart';
import 'Screen2.dart';
import 'Screen3.dart';
import 'Screen4.dart';

class RouteClass{
  static Route generator(RouteSettings sttings) {
    switch (sttings.name) {
      case route1:
        return builderscreen(Screen1());
      case route2:
        return builderscreen(Screen2());
      case route3:
        return builderscreen(Screen3());
      case route4:
        return builderscreen(Screen4());
      default:
        return MaterialPageRoute(
            builder: (_) => Screen1());
    }
  }
}

MaterialPageRoute builderscreen(Widget screen) {
  return MaterialPageRoute(builder: (_) => screen);
}
