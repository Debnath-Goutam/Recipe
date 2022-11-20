import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe/logic/Food/Food_Detail_Screen_Cubit/food_detail_screen_cubit.dart';
import 'package:recipe/models/Food/Details/Food_Details_Model.dart';
import 'package:recipe/presentation/widgets/Recipe_Card.dart';

class Food_Detail_Screen extends StatelessWidget {

  final endpoint;
  Food_Detail_Screen({Key? key, this.endpoint}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    final deviceSize = mediaQueryData.size;

    return BlocProvider(
      create: (context) => FoodDetailScreenCubit(),
      child: Scaffold(

        body: BlocBuilder<FoodDetailScreenCubit, FoodDetailScreenState>(
          builder: (context, state) {
            if(state is FoodDetailScreenLoading) {
              BlocProvider.of<FoodDetailScreenCubit>(context).getFoodDetail(endpoint.toString());
              return const Center(
                child: CircularProgressIndicator(
                  color: Colors.red,
                ),
              );

            } else if(state is FoodDetailScreenLoaded) {

              Food_Details_Model data = state.foodDetailsModel[0];

              return Recipe_Card(
                data.strMeal,
                data.strInstructions ,
                data.strMealThumb,
                data.strIngredient1,
                data.strIngredient2,
                data.strIngredient3,
                data.strIngredient4,
                data.strIngredient5,
                data.strIngredient6,
                data.strIngredient7,
                data.strIngredient8,
                data.strIngredient9,
                data.strIngredient10,
                data.strIngredient11,
                data.strIngredient12,
                data.strIngredient13,
                data.strIngredient14,
                data.strIngredient15,
                data.strIngredient16,
                data.strIngredient17,
                data.strIngredient18,
                data.strIngredient19,
                data.strIngredient20,
                data.strMeasure1,
                data.strMeasure2,
                data.strMeasure3,
                data.strMeasure4,
                data.strMeasure5,
                data.strMeasure6,
                data.strMeasure7,
                data.strMeasure8,
                data.strMeasure9,
                data.strMeasure10,
                data.strMeasure11,
                data.strMeasure12,
                data.strMeasure13,
                data.strMeasure14,
                data.strMeasure15,
                data.strMeasure16,
                data.strMeasure17,
                data.strMeasure18,
                data.strMeasure19,
                data.strMeasure20,

              );

            } else {
              return Center(child: Text('Failed to load recipe'));
            }
          },
        ),

      ),
    );
  }
}
