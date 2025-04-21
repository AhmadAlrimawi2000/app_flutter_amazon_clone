import 'package:amazon_clone/constants/app_routes.dart';
import 'package:amazon_clone/features/authentication/screens/auth_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings){

  switch(settings.name){
    case AppRoutes.authScreen:
      return MaterialPageRoute(
        builder: (context) => const AuthScreen(),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: Center(
            child: Text('Page not found'),
          ),
        ),
      );
  }

}