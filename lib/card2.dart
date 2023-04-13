import 'package:flutter/material.dart';
import 'author_card.dart';
import 'gpsdomundo_theme.dart';

class Card2 extends StatelessWidget {
  const Card2({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      //1
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://www.acessa.com/_midias/jpg/2023/02/08/800x533/1_20220914_sala_de_cinema-150861.jpeg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: Column(children: [
          const AuthorCard(
            authorName: 'Cinemark',
            title: 'Filmes',
            imageProvider: NetworkImage(
                'https://pmsaposse.sp.gov.br/wp-content/uploads/2018/09/cinemapontosmis-750x661.jpg'),
          ),
          Expanded(
            //2
            child: Stack(
              children: [
                //3
                Positioned(
                  bottom: 16,
                  right: 16,
                  child: Text(
                    '🍿',
                    style: GpsdoMundoTheme.darkTextTheme.headline1,
                  ),
                ),
                //4
                Positioned(
                  bottom: 70,
                  left: 16,
                  child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        'Cinema',
                        style: GpsdoMundoTheme.darkTextTheme.headline1,
                      )),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
