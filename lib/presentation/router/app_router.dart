import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template_bloc_routing/logic/cubit/counter_cubit.dart';
import 'package:flutter_template_bloc_routing/presentation/screens/home_screen.dart';
import 'package:flutter_template_bloc_routing/presentation/screens/second_screen.dart';
import 'package:flutter_template_bloc_routing/presentation/screens/third_screen.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => HomeScreen(
            title: "Home Screen",
            color: Colors.blueAccent,
          ),
        );
      case '/second':
        return MaterialPageRoute(
          builder: (_) => SecondScreen(
            title: "Second Screen",
            color: Colors.redAccent,
          ),
        );
      case '/third':
        return MaterialPageRoute(
          builder: (_) => ThirdScreen(
            title: "Third Screen",
            color: Colors.greenAccent,
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => HomeScreen(
            title: "Home Screen",
            color: Colors.blueAccent,
          ),
        );
    }
  }
}
