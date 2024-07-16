import 'package:flutter/material.dart';

class SliderCard extends StatelessWidget {
  final int index;
  final int length;
  final String text;
  final Color color;

  final AssetImage image;
  final VoidCallback onTap;

  const SliderCard({
    Key? key,
    required this.index,
    required this.color,
    required this.image,
    required this.text,
    required this.onTap,
    required this.length,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: color,
        child: Column(
          children: [
            Container(
              height: 170,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: image,
                ),
              ),
            ),
            Text(
              text,
              style: TextStyle(
                color: Theme.of(context).colorScheme.background,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '$length/' '',
              style: const TextStyle(
                color: Colors.brown,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
