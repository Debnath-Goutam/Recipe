import 'package:flutter/material.dart';

class Detail_Tile extends StatelessWidget {

  final title, serving;


  Detail_Tile(this.title, this.serving);

  @override
  Widget build(BuildContext context) {

    MediaQueryData mediaQueryData = MediaQuery.of(context);
    final deviceSize = mediaQueryData.size;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Container(
          width: deviceSize.width,
          height: 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('$title', style: Theme.of(context).textTheme.bodyText1?.copyWith(fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Text('$serving')
            ],
          ),
        ),
      ),
    );
  }
}
