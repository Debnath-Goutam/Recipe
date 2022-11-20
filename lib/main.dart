import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe/presentation/customs/Custom_Theme.dart';
import 'package:recipe/presentation/routes/Routes.dart';
import 'package:recipe/presentation/screens/Menu_Screen.dart';
import 'logic/Food/Food_Categories_Cubit/food_categories_cubit.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  Routes routes = Routes();
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(

      providers: [
        BlocProvider<FoodCategoriesCubit>(
            create: (context) =>FoodCategoriesCubit()
        ),
      ],

      child: MaterialApp(
        onGenerateRoute: routes.onGenerateRoutes,
        title: 'Recipe',
        theme: Custom_Theme(),
        home: Menu_Screen(),

      ),
    );
  }
}
