import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe/presentation/widgets/Recipe_Card.dart';

import '../../../logic/Beverages/Beverage_Detail_Screen_Cubit/beverage_detail_screen_cubit.dart';
import '../../../models/Beverages/Beverage_Detail_Model/Beverage_Details_Model.dart';

class Beverage_Detail_Screen extends StatelessWidget {

  final endpoint;
  Beverage_Detail_Screen({Key? key, this.endpoint}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    final deviceSize = mediaQueryData.size;

    return BlocProvider(
      create: (context) => BeverageDetailScreenCubit(),
      child: Scaffold(

        body: BlocBuilder<BeverageDetailScreenCubit, BeverageDetailScreenState>(
          builder: (context, state) {
            if(state is BeverageDetailScreenLoading) {
              print(endpoint);
              BlocProvider.of<BeverageDetailScreenCubit>(context).getBeverageDetail(endpoint.toString());
              return const Center(
                child: CircularProgressIndicator(
                  color: Colors.red,
                ),
              );

            } else if(state is BeverageDetailScreenLoaded) {

              Beverage_Details_Model data = state.beverageDetailsModel[0];

              return Recipe_Card(
                data.strDrink,
                data.strInstructions ,
                data.strDrinkThumb,
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
                '',
                '',
                '',
                '',
                '',
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
                '',
                '',
                '',
                '',
                '',

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
