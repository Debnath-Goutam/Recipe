import 'package:flutter/material.dart';
import 'package:recipe/presentation/customs/Custom_AppBar.dart';

import '../../models/menuModel.dart';
import '../widgets/menuTile.dart';

class Menu_Screen extends StatelessWidget {
  const Menu_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    MediaQueryData query = MediaQuery.of(context);
    final deviceSize = query.size;

    print('height: ${deviceSize.height}\nwidth: ${deviceSize.width}\n as: ${deviceSize.aspectRatio}');

    return Scaffold(
      appBar: Custom_AppBar(title: 'Menu'),

      resizeToAvoidBottomInset: false,

      body: Column(

        children: <Widget>[

          Padding(
            padding: EdgeInsets.symmetric(vertical: deviceSize.height/30, horizontal: deviceSize.width/20),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Search food',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                  fillColor: Colors.black12,
                  filled: true
              ),
            ),
          ),

          Stack(

            children: <Widget>[

              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Container(
                  height: deviceSize.height/1.5,
                  width: deviceSize.width/4,
                  decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadiusDirectional.only(topEnd: Radius.circular(10), bottomEnd: Radius.circular(10))
                  ),
                ),
              ),

              Column(
                children:  Menu_Model.menuModelList.map((menu_model) => Menu_Tile(menu_model: menu_model)).toList(),
              )

            ],
          )
        ],

      ),

    );
  }
}
