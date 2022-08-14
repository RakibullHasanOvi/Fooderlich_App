import 'package:flutter/material.dart';
import 'package:fooderlich_app/circle_image.dart';
import 'package:fooderlich_app/favourite_widget.dart';
import 'package:fooderlich_app/fooderlich_theme.dart';

class AuthorCard extends StatelessWidget {
  final String authorname;
  final String title;
  final ImageProvider? imageProvider;
  const AuthorCard({
    Key? key,
    required this.authorname,
    required this.imageProvider,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          CircleImage(
            imageProvider: imageProvider,
            imageRadius: 30,
          ),
          const SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                authorname,
                style: FooderlichTheme.lightTextTheme.headline1,
              ),
              Text(
                title,
                style: FooderlichTheme.lightTextTheme.bodyText1,
              ),
            ],
          ),
          const Spacer(),
          // const Icon(
          //   Icons.favorite_border,
          //   size: 50,
          //   color: Colors.red,
          // ),
          FavouriteWidget(),
        ],
      ),
    );
  }
}
