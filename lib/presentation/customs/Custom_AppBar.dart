import 'package:flutter/material.dart';

class Custom_AppBar extends StatelessWidget with PreferredSizeWidget {
  final title;

  const Custom_AppBar({Key? key, this.title,}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return AppBar(
      title: Text(title, style: Theme.of(context).textTheme.headline2,),
      backgroundColor: Colors.white,
      actions: <Widget>[
        TextButton(
          onPressed: (){},
          child: Icon(Icons.shopping_cart_sharp, color: Colors.black,),
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(50);
}
