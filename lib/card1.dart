import 'package:flutter/material.dart';
import 'gpsdomundo_theme.dart';

class Card1 extends StatelessWidget {
  const Card1({super.key});
  // 1
  final String category = 'cinema';
  final String title = 'Lojas';
  final String description = 'restaurantes';
  final String tourist = 'compras';
  //2
  @override
  Widget build(BuildContext context) {
    //3
    return Center(
        // Todo: Card1 Decorate Container
        child: Container(
      // 1
      padding: const EdgeInsets.all(16),
      //2
      constraints: const BoxConstraints.expand(
        width: 350,
        height: 450,
      ),
      // 3
      decoration: const BoxDecoration(
        //4
        image: DecorationImage(
          //5
          image: NetworkImage(
              'https://lojafarm.vteximg.com.br/arquivos/ids/2242122/banner-nossas-lojas1.png?v=637211642493130000'),
          // 6
          fit: BoxFit.cover,
        ),
        //7
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      child: Stack(
        children: [
          // 8
          Text(
            category,
            style: GpsdoMundoTheme.lightTextTheme.bodyText1,
          ),
          // 9
          Positioned(
            top: 20,
            child: Text(
              title,
              style: GpsdoMundoTheme.lightTextTheme.headline1,
            ),
          ),
          // 10
          Positioned(
            bottom: 30,
            right: 0,
            child: Text(
              description,
              style: GpsdoMundoTheme.lightTextTheme.bodyText1,
            ),
          ),
          //1
          Positioned(
            bottom: 10,
            right: 0,
            child: Text(
              tourist,
              style: GpsdoMundoTheme.lightTextTheme.bodyText1,
            ),
          ),
        ],
      ),
    ));
  }
}
