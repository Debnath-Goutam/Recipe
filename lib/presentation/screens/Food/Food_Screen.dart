import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe/logic/Food/Selected_Category_Cubit/selected_category_cubit.dart';
import 'package:recipe/models/Food/Selected_Category_Model/Selected_Category_Model.dart';
import 'package:recipe/presentation/customs/Custom_AppBar.dart';
import 'package:recipe/presentation/widgets/Category_Card.dart';
import 'package:recipe/presentation/widgets/Selected_Category_Card.dart';

import '../../../logic/Food/Food_Categories_Cubit/food_categories_cubit.dart';
import '../../../models/Food/Foods_Category_Model/Food_Category_Model.dart';

class Food_Screen extends StatefulWidget {

  const Food_Screen({Key? key}) : super(key: key);

  @override
  State<Food_Screen> createState() => _Food_ScreenState();
}

class _Food_ScreenState extends State<Food_Screen> {

  @override
  Widget build(BuildContext context) {
    MediaQueryData query = MediaQuery.of(context);
    final deviceSize = query.size;

    String selectedCategory = "";

    return SafeArea(
      child: Scaffold(

        appBar: Custom_AppBar(title: 'Good Morning!',),

        body: BlocProvider(
          create: (context) => SelectedCategoryCubit(),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(deviceSize.height / 30.8),
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
                        SizedBox(width: deviceSize.width / 72,),
                        Icon(Icons.arrow_drop_down),
                      ],
                    ),


                    Padding(
                      padding: EdgeInsets.symmetric(vertical: deviceSize.height / 30.8),
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
                      create: (context) => FoodCategoriesCubit(),
                      child: BlocBuilder<FoodCategoriesCubit, FoodCategoriesState>(
                        builder: (context, state) {
                          if (state is FoodCategoriesLoading) {
                            BlocProvider.of<FoodCategoriesCubit>(context)
                                .getFoodCategories();
                            return CircularProgressIndicator(
                              color: Colors.red,
                            );
                          } else if (state is FoodCategoriesLoaded) {
                            return Container(
                              height: 150,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: state.foodCategories.length,
                                  itemBuilder: (context, index) {
                                    Food_Category_Model data = state
                                        .foodCategories[index];
                                    return Container(
                                      child: Category_Card(
                                        title: data.strCategory,
                                        thumbnail: data.strCategoryThumb,
                                        onTap: () {
                                          BlocProvider.of<SelectedCategoryCubit>(context).getSelectedCategory(data.strCategory);
                                        },
                                      ),
                                    );
                                  }
                              ),
                            );
                          } else {
                            return Text('Failed to load categories');
                          }
                        },
                      ),
                    ),

                    //SizedBox(height: 10,),

                    Text('Popular Foods', style: Theme.of(context).textTheme.headline1,)

                  ],
                ),
              ),
              BlocBuilder<SelectedCategoryCubit, SelectedCategoryState>(
                builder: (context, state) {
                  if (state is SelectedCategoryLoading) {
                    BlocProvider.of<SelectedCategoryCubit>(context).getSelectedCategory(selectedCategory);
                    return CircularProgressIndicator(
                      color: Colors.red,
                    );
                  } else if (state is SelectedCategoryLoaded) {
                    return SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Container(
                        height: deviceSize.height*0.43,
                        child: ListView.builder(
                            itemCount: state.selectedCategoryModel.length,
                            itemBuilder: (context, index) {
                              Selected_Category_Model data = state.selectedCategoryModel[index];
                              return Container(
                                child: Selected_Category_Card(
                                    title: data.strMeal,
                                    thumbnail: data.strMealThumb,
                                    onTap: (){
                                      Navigator.pushNamed(context, '/food_detail', arguments: "https://www.themealdb.com/api/json/v1/1/search.php?s=${data.strMeal}",);
                                    }
                                ),
                              );
                            }
                        ),
                      ),
                    );
                  } else if(state is SelectedCategoryLoadingFailed){
                    return Text('Failed to load selected category');
                  } else {
                    return Container();
                  }
                },
              ),
            ],
          ),
        ),

      ),
    );
  }
}
