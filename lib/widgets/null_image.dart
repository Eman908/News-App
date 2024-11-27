import 'package:flutter/material.dart';

class NullImage extends StatelessWidget {
  const NullImage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 200,
      width: double.infinity,
      child: Center(
        child: Icon(
          Icons.broken_image,
          size: 50,
          color: Colors.grey,
        ),
      ),
    );
  }
}
