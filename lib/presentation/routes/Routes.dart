import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe/presentation/screens/Food/Food_Screen.dart';
import 'package:recipe/presentation/screens/Menu_Screen.dart';
import '../screens/Beverage/Beverage_Details_Screen.dart';
import '../screens/Beverage/Beverage_Screen.dart';
import '../screens/Food/Food_Detail_Screen.dart';

class Routes {

  Route? onGenerateRoutes(RouteSettings routeSettings) {

    final args = routeSettings.arguments;

    switch(routeSettings.name) {

      case '/':
        return MaterialPageRoute(builder: (_) => Menu_Screen());
      case '/food':
        return MaterialPageRoute(builder: (_) => Food_Screen());
      case '/beverage':
        return MaterialPageRoute(builder: (_) => Beverage_Screen());
      // case '/category':
      //   return MaterialPageRoute(builder: (_) => Category_List(category: args,));
      case '/food_detail':
        return MaterialPageRoute(builder: (_) => Food_Detail_Screen(endpoint: args,));
      case '/beverage_detail':
        return MaterialPageRoute(builder: (_) => Beverage_Detail_Screen(endpoint: args,));
      default:
        return null;

    }

  }

}