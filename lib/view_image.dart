import 'package:flutter/material.dart';

class ViewImage extends StatelessWidget {
  final String? title;
  final String? image;
  final Color? color;

  const ViewImage({Key? key, this.image, this.color, this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      body: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50),
              Expanded(
                flex: 2,
                child: Text(
                  title!,
                  style: const TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Hero(
                  tag: image!,
                  child: Image.asset(
                    image!,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
