import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe/presentation/widgets/Detail_Tile.dart';

class Recipe_Card extends StatelessWidget {

  String strMeal;
  String strInstructions;
  String strMealThumb;
  String strIngredient1;
  String strIngredient2;
  String strIngredient3;
  String strIngredient4;
  String strIngredient5;
  String strIngredient6;
  String strIngredient7;
  String strIngredient8;
  String strIngredient9;
  String strIngredient10;
  String strIngredient11;
  String strIngredient12;
  String strIngredient13;
  String strIngredient14;
  String strIngredient15;
  String strIngredient16;
  String strIngredient17;
  String strIngredient18;
  String strIngredient19;
  String strIngredient20;
  String strMeasure1;
  String strMeasure2;
  String strMeasure3;
  String strMeasure4;
  String strMeasure5;
  String strMeasure6;
  String strMeasure7;
  String strMeasure8;
  String strMeasure9;
  String strMeasure10;
  String strMeasure11;
  String strMeasure12;
  String strMeasure13;
  String strMeasure14;
  String strMeasure15;
  String strMeasure16;
  String strMeasure17;
  String strMeasure18;
  String strMeasure19;
  String strMeasure20;


  Recipe_Card(
      this.strMeal,
      this.strInstructions,
      this.strMealThumb,
      this.strIngredient1,
      this.strIngredient2,
      this.strIngredient3,
      this.strIngredient4,
      this.strIngredient5,
      this.strIngredient6,
      this.strIngredient7,
      this.strIngredient8,
      this.strIngredient9,
      this.strIngredient10,
      this.strIngredient11,
      this.strIngredient12,
      this.strIngredient13,
      this.strIngredient14,
      this.strIngredient15,
      this.strIngredient16,
      this.strIngredient17,
      this.strIngredient18,
      this.strIngredient19,
      this.strIngredient20,
      this.strMeasure1,
      this.strMeasure2,
      this.strMeasure3,
      this.strMeasure4,
      this.strMeasure5,
      this.strMeasure6,
      this.strMeasure7,
      this.strMeasure8,
      this.strMeasure9,
      this.strMeasure10,
      this.strMeasure11,
      this.strMeasure12,
      this.strMeasure13,
      this.strMeasure14,
      this.strMeasure15,
      this.strMeasure16,
      this.strMeasure17,
      this.strMeasure18,
      this.strMeasure19,
      this.strMeasure20);

  @override
  Widget build(BuildContext context) {

    MediaQueryData mediaQueryData = MediaQuery.of(context);
    final deviceSize = mediaQueryData.size;
    var counter = 1;

    return Scaffold(
      body: Stack(

        children: [

          Container(
            height: deviceSize.height*0.3,
            width: deviceSize.width,
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(strMealThumb), fit: BoxFit.cover),
            ),
            child: Stack(
              children: [

                Positioned(
                  top: deviceSize.height*0.1,
                  child: Row(
                    children: [
                      Icon(Icons.star, color: Colors.black,),
                      SizedBox(width: 15,),
                      Text('15:15',style: Theme.of(context).textTheme.bodyText1,)
                    ],
                  ),
                ),
                
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: Icon(CupertinoIcons.play_rectangle_fill, color: Colors.red,),
                )
                
              ],
            ),
          ),

          SingleChildScrollView(
            child: Container(
              color: Colors.white,
              margin: EdgeInsets.only(top: deviceSize.height*0.3),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Align(
                            alignment: AlignmentDirectional.topStart,
                            child: Icon(Icons.insert_comment_outlined, color: Colors.black,),
                          ),
                        ),
                        SizedBox(width: deviceSize.width*0.55,),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Align(
                            alignment: AlignmentDirectional.topEnd,
                            child: Icon(Icons.star_border_purple500_outlined, color: Colors.black,),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Align(
                            alignment: AlignmentDirectional.topEnd,
                            child: Icon(Icons.bookmark_border, color: Colors.black,),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Align(
                            alignment: AlignmentDirectional.topEnd,
                            child: Icon(Icons.share, color: Colors.black,),
                          ),
                        ),

                      ],
                    ),
                    DefaultTabController(
                      length: 3,
                      child: Column(

                        children: [
                          TabBar(
                              indicator: ShapeDecoration(
                                  color: Colors.redAccent,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      side: BorderSide(color: Colors.redAccent)
                                  )
                              ),
                              labelColor: Colors.black,
                              indicatorColor: Colors.redAccent,
                              tabs: const [
                                Tab(text: 'Recipe',),
                                Tab(text: 'Instructions',),
                                Tab(text: 'Nutrition',)
                              ]
                          ),

                          Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(top: 20),
                            height: deviceSize.height*2,
                            child: TabBarView(
                                children: [
                                  Column(
                                    children: [
                                      Row(
                                        children: [

                                          Column(
                                            children: [
                                              Text('Ingredients For: ', style: Theme.of(context).textTheme.bodyText1?.copyWith(fontWeight: FontWeight.bold),),
                                              Text('$counter Servings', style: Theme.of(context).textTheme.bodyText2,)
                                            ],
                                          ),

                                          SizedBox(width: deviceSize.width*0.25,),

                                          FloatingActionButton(
                                              mini: true,
                                              backgroundColor: Colors.red,
                                              child: Icon(Icons.add, color: Colors.white,),
                                              onPressed: (){}
                                          ),

                                          Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 10),
                                            child: Text('$counter'),
                                          ),

                                          FloatingActionButton(
                                              mini: true,
                                              backgroundColor: Colors.red,
                                              child: Icon(Icons.remove, color: Colors.white,),
                                              onPressed: (){}
                                          ),


                                        ],
                                      ),

                                      SizedBox(height: 30,),

                                      (strIngredient1 != null && strIngredient1.isNotEmpty)?Detail_Tile(strIngredient1, '${strMeasure1}') : Container(),

                                      (strIngredient2 != null && strIngredient2.isNotEmpty)?Detail_Tile(strIngredient2, '${strMeasure2}') : Container(),

                                      (strIngredient3 != null && strIngredient3.isNotEmpty)?Detail_Tile(strIngredient3, '${strMeasure3}') : Container(),

                                      (strIngredient4 != null && strIngredient4.isNotEmpty)?Detail_Tile(strIngredient4, '${strMeasure4}') : Container(),

                                      (strIngredient5 != null && strIngredient5.isNotEmpty)?Detail_Tile(strIngredient5, '${strMeasure5}') : Container(),

                                      (strIngredient6 != null && strIngredient6.isNotEmpty)?Detail_Tile(strIngredient6, '${strMeasure6}') : Container(),

                                      (strIngredient7 != null &&strIngredient7.isNotEmpty)?Detail_Tile(strIngredient7, '${strMeasure7}') : Container(),

                                      (strIngredient8 != null && strIngredient8.isNotEmpty)?Detail_Tile(strIngredient8, '${strMeasure8}') : Container(),

                                      (strIngredient9 != null && strIngredient19.isNotEmpty)?Detail_Tile(strIngredient9, '${strMeasure9}') : Container(),

                                      (strIngredient10 != null && strIngredient10.isNotEmpty)?Detail_Tile(strIngredient10, '${strMeasure10}') : Container(),

                                      (strIngredient11 != null && strIngredient11.isNotEmpty)?Detail_Tile(strIngredient11, '${strMeasure11}') : Container(),

                                      (strIngredient12 != null && strIngredient12.isNotEmpty)?Detail_Tile(strIngredient12, '${strMeasure12}') : Container(),

                                      (strIngredient13 != null && strIngredient13.isNotEmpty)?Detail_Tile(strIngredient13, '${strMeasure13}') : Container(),

                                      (strIngredient14 != null && strIngredient14.isNotEmpty)?Detail_Tile(strIngredient14, '${strMeasure14}') : Container(),

                                      (strIngredient15 != null && strIngredient15.isNotEmpty)?Detail_Tile(strIngredient15, '${strMeasure15}') : Container(),

                                      (strIngredient16 != null && strIngredient16.isNotEmpty)?Detail_Tile(strIngredient16, '${strMeasure16}') : Container(),

                                      (strIngredient17 != null && strIngredient17.isNotEmpty)?Detail_Tile(strIngredient17, '${strMeasure17}') : Container(),

                                      (strIngredient18 != null && strIngredient18.isNotEmpty)?Detail_Tile(strIngredient18, '${strMeasure18}') : Container(),

                                      (strIngredient19 != null && strIngredient19.isNotEmpty)?Detail_Tile(strIngredient19, '${strMeasure19}') : Container(),

                                      (strIngredient20 != null && strIngredient10.isNotEmpty)?Detail_Tile(strIngredient20, '${strMeasure20}') : Container(),

                                    ],
                                  ),

                                  Text(strInstructions, style: Theme.of(context).textTheme.bodyText1,),//ToDo Inststructions

                                  Center(child: Text('Hello')),

                                ]
                            ),
                          )

                        ],
                      ),


                    )

                  ],
                ),
              ),
            ),
          )

        ],

      ),
    );
  }
}
