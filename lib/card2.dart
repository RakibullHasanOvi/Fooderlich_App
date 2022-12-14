import 'package:flutter/material.dart';
import 'package:fooderlich_app/author_card.dart';
import 'package:fooderlich_app/fooderlich_theme.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(
          height: 500,
          width: 380,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/mag5.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        child: Column(
          children: [
            //Author Card
            AuthorCard(
              authorname: 'R.H Ovi',
              imageProvider: AssetImage('assets/Rakibull.jpeg'),
              title: 'Smoothie Connoisseur',
            ),

            //Satck of Text

            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    bottom: 16,
                    right: 100,
                    child: Text(
                      'Recipe',
                      style: FooderlichTheme.lightTextTheme.headline1,
                    ),
                  ),
                  Positioned(
                    bottom: 70,
                    left: 20,
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        'Smoothies',
                        style: FooderlichTheme.lightTextTheme.headline1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
