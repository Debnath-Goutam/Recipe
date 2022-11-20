import 'package:flutter/material.dart';

class Category_Card extends StatelessWidget {

  final String title;
  final String thumbnail;
  final onTap;


  Category_Card({required this.title, required this.thumbnail, required this.onTap});

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black12,
                image: DecorationImage(
                    image: NetworkImage(thumbnail),
                    fit: BoxFit.cover)),
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 10),
            width: 100,
            height: 100,
          ),
          SizedBox(height: 10,),
          Text(title, style: Theme.of(context).textTheme.bodyText1),
        ],
      ),
    );
  }
}
