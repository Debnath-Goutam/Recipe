import 'dart:math';

import 'package:flutter/material.dart';

class Selected_Category_Card extends StatelessWidget {

  final String title;
  final String thumbnail;
  final onTap;


  Selected_Category_Card({required this.title, required this.thumbnail, required this.onTap});

  @override
  Widget build(BuildContext context) {

    MediaQueryData mediaQueryData = MediaQuery.of(context);
    final deviceSize = mediaQueryData.size;
    final random = Random();

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
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
              width: deviceSize.width,
              height: 200,
            ),
            SizedBox(height: 10,),
            Align(
              alignment: AlignmentDirectional.topStart,
                child: Text(title, style: Theme.of(context).textTheme.headline2?.copyWith(fontWeight: FontWeight.bold))
            ),
            SizedBox(height: 10,),
            Align(
                alignment: AlignmentDirectional.topStart,
                child: Row(
                  children: [

                    Icon(Icons.star, color: Colors.red,),

                    Text('${num.parse((random.nextDouble()).toStringAsFixed(1))*5}\t(${random.nextInt(200)+50} ratings)', style: Theme.of(context).textTheme.bodyText1,)
                  ],
                ),
            ),

            SizedBox(height: 10,),

          ],
        ),
      ),
    );
  }
}
