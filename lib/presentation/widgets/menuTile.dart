import 'package:flutter/material.dart';

import '../../models/menuModel.dart';

class Menu_Tile extends StatelessWidget {

  final Menu_Model menu_model;
  const Menu_Tile({Key? key, required this.menu_model}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    MediaQueryData mediaQueryData = MediaQuery.of(context);
    final deviceSize = mediaQueryData.size;

    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(

        width: deviceSize.width*0.9,
        height: 100,
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Positioned(
              left: 30,
              child: Container(
                padding: EdgeInsets.only(left: 65, top: 15, bottom: 15),
                width: deviceSize.width * .75,
                height: 80,
                alignment: Alignment.topLeft,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0),
                      blurRadius: 2.0,
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(150.0),
                    bottomLeft: Radius.circular(150.0),
                    topRight: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      menu_model.foodName ?? '',
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '${menu_model.totalItems ?? ''} items',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 5,
              left: 0,
              child: Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(menu_model.foodImage ??
                          'https://googleflutter.com/sample_image.jpg'),
                      fit: BoxFit.fill),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Container(
                  decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(40.0),
                  ),
                  child: FloatingActionButton(
                    backgroundColor: Colors.white,
                      child: Icon(Icons.chevron_right, color: Colors.red,),
                      onPressed: () {
                      menu_model.foodName == 'Food'?
                          Navigator.pushNamed(context, '/food') :
                          Navigator.pushNamed(context, '/beverage');

                      }),
                ),
              ),
            ),
          ],
        ),

      ),
    );
  }
}
