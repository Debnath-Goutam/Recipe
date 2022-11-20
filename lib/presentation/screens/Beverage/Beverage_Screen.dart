import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe/logic/Beverages/Beverages_Categories_Cubit/beverages_categories_cubit.dart';
import 'package:recipe/logic/Beverages/Selected_Ingredient_Cubit/selected_ingredient_cubit.dart';
import 'package:recipe/presentation/widgets/Selected_Category_Card.dart';
import '../../../models/Beverages/Beverages_Category_Model/Beverage_Category_Model.dart';
import '../../../models/Beverages/Selected_Ingredient_Model/Selected_Ingredient_Model.dart';
import '../../customs/Custom_AppBar.dart';
import '../../widgets/Category_Card.dart';

class Beverage_Screen extends StatefulWidget {
  const Beverage_Screen({Key? key}) : super(key: key);

  @override
  State<Beverage_Screen> createState() => _Beverage_ScreenState();
}

class _Beverage_ScreenState extends State<Beverage_Screen> {
  @override
  Widget build(BuildContext context) {

    MediaQueryData query = MediaQuery.of(context);
    final deviceSize = query.size;
    String selectedIngredient = " ";

    return Scaffold(

        appBar: Custom_AppBar(title: 'Good Morning!',),

        body: BlocProvider(
          create: (context) => SelectedIngredientCubit(),
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.all(deviceSize.height/30.8),
                  child: Column(
                      children: <Widget>[

                        Align(
                            alignment: AlignmentDirectional.topStart,
                            child: Text('Delivering to')
                        ),

                        Row(
                          children: <Widget>[
                            Text('Current Location', style: Theme
                                .of(context)
                                .textTheme
                                .bodyText1,),
                            SizedBox(width: deviceSize.width/72,),
                            Icon(Icons.arrow_drop_down),
                          ],
                        ),


                        Padding(
                          padding: EdgeInsets.symmetric(vertical: deviceSize.height/30.8),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: 'Search food',
                                prefixIcon: Icon(Icons.search),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50)),
                                fillColor: Colors.black12,
                                filled: true
                            ),
                          ),
                        ),

                        BlocProvider(
                          create: (context) => BeveragesCategoriesCubit(),
                          child: BlocBuilder<BeveragesCategoriesCubit, BeveragesCategoriesState>(
                            builder: (context, state) {
                              if (state is BeveragesCategoriesLoading) {
                                BlocProvider.of<BeveragesCategoriesCubit>(context).getBevegareCategories();
                                return CircularProgressIndicator(
                                  color: Colors.red,
                                );
                              } else if(state is BeveragesCategoriesLoaded){
                                return Container(
                                  height: 150,
                                  child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: state.beverageCategories.length,
                                      itemBuilder: (context, index) {
                                        Beverage_Category_Model data = state.beverageCategories[index];
                                        return Container(
                                          child: Category_Card(
                                            title: data.strIngredient1,
                                            thumbnail: "https://st.depositphotos.com/1005063/1911/i/600/depositphotos_19113621-stock-photo-mug-fresh-beer-with-cap.jpg",
                                            onTap: (){
                                              selectedIngredient = data.strIngredient1;
                                              BlocProvider.of<SelectedIngredientCubit>(context).getSelectedIngredient(data.strIngredient1);
                                            },
                                          ),
                                        );
                                      }
                                  ),
                                );
                              } else{
                                return Text('Failed to load categories');
                              }
                            },
                          ),
                        ),

                        Text('Popular Beverages', style: Theme.of(context).textTheme.headline1,),

                      ]
                  )

              ),

              BlocBuilder<SelectedIngredientCubit, SelectedIngredientState>(
                builder: (context, state) {
                  if (state is SelectedIngredientLoading) {
                    BlocProvider.of<SelectedIngredientCubit>(context).getSelectedIngredient(selectedIngredient);
                    return CircularProgressIndicator(
                      color: Colors.red,
                    );
                  } else if (state is SelectedIngredientLoaded) {
                    return SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Container(
                        height: deviceSize.height*0.43,
                        child: ListView.builder(
                            itemCount: state.selectedIngredientModel.length,
                            itemBuilder: (context, index) {
                              Selected_Ingredient_Model data = state.selectedIngredientModel[index];
                              return Container(
                                child: Selected_Category_Card(
                                    title: data.strDrink,
                                    thumbnail: data.strDrinkThumb,
                                    onTap: (){
                                      Navigator.pushNamed(context, '/beverage_detail', arguments: "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=${data.strDrink}",);
                                    }
                                ),
                              );
                            }
                        ),
                      ),
                    );
                  } else if(state is SelectedIngredientLoadingFailed){
                    return Text('Failed to load selected category');
                  } else {
                    return Container();
                  }
                },
              ),

            ],
          ),
        )
    );
  }
}
