import 'package:flutter/material.dart';

class FavouriteWidget extends StatefulWidget {
  const FavouriteWidget({Key? key}) : super(key: key);

  @override
  State<FavouriteWidget> createState() => _FavouriteWidgetState();
}

class _FavouriteWidgetState extends State<FavouriteWidget> {
  bool isFaviroute = false;
  void changedFavorite() {
    const snackBar = SnackBar(
      content: Text('Favorite Clicked'),
    );

    setState(() {
      isFaviroute = !isFaviroute;
    });

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: changedFavorite,
      icon: Icon(
        isFaviroute ? Icons.favorite : Icons.favorite_border,
        size: 45,
        color: Colors.red,
      ),
    );
  }
}
