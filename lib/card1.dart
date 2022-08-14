import 'package:flutter/material.dart';
import 'package:fooderlich_app/fooderlich_theme.dart';

class Card1 extends StatelessWidget {
  const Card1({Key? key}) : super(key: key);

  final String cetagory = 'Editor\'s choice';
  final String title = 'The Art of Dough';
  final String description = 'Learn to make perfect bread';
  final String cheif = 'RAKIBULL HASAN MONJU';

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
            image: AssetImage('assets/mag1.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        child: Stack(
          children: [
            Text(
              cetagory,
              style: FooderlichTheme.darkTextTheme.bodyText1,
            ),
            Positioned(
              top: 20,
              child: Text(
                title,
                style: FooderlichTheme.darkTextTheme.headline2,
              ),
            ),
            Positioned(
              bottom: 30,
              right: 0,
              child: Text(
                description,
                style: FooderlichTheme.darkTextTheme.headline6,
              ),
            ),
            Positioned(
              bottom: 10,
              right: 0,
              child: Text(
                cheif,
                style: FooderlichTheme.darkTextTheme.bodyText1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
