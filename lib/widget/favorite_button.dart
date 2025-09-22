import 'package:flutter/material.dart';

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({super.key});

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool _isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          onPressed: () {
            setState(() {
              _isFavorite = !_isFavorite; // Toggle the favorite state
            });
          },
          icon: Icon(
            _isFavorite
                ? Icons.favorite
                : Icons.favorite_border, // Conditional icon
          ),
          color: _isFavorite
              ? Colors.red
              : null, // Optional: change color as well
        ),
      ],
    );
  }
}
