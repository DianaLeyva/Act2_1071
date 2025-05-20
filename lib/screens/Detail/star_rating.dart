import 'package:flutter/material.dart';

class StarRating extends StatefulWidget {
  const StarRating({super.key, required this.rating});
  final double rating;

  @override
  State<StarRating> createState() => _StarRatingState();
}

class _StarRatingState extends State<StarRating> {
  Widget star(bool fill) {
    return Icon(
      Icons.star,
      size: 20,
      color: fill ? Colors.deepOrange : Colors.black45,
    );
  }

  Widget halfStar() {
    return Icon(
      Icons.star_half,
      size: 20,
      color: Colors.deepOrange,
    );
  }

  @override
  Widget build(BuildContext context) {
    int fullStars = widget.rating.floor();
    bool hasHalfStar = widget.rating - fullStars >= 0.5;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(5, (index) {
        if (index < fullStars) {
          return star(true);
        } else if (index == fullStars && hasHalfStar) {
          return halfStar();
        } else {
          return star(false);
        }
      }),
    );
  }
}
