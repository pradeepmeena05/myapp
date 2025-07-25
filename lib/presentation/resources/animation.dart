import 'package:flutter/material.dart';

class HoverImage extends StatefulWidget {
  final String imagePath;
  final String label;

  const HoverImage({required this.imagePath, required this.label, super.key});

  @override
  State<HoverImage> createState() => _HoverImageState();
}

class _HoverImageState extends State<HoverImage> {
  bool _hover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _hover = true),
      onExit: (_) => setState(() => _hover = false),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        transform: Matrix4.identity()..scale(_hover ? 1.1 : 1.0),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              widget.imagePath,
              width: 120,
              height: 120,
              fit: BoxFit.cover,
            ),
            if (_hover)
              Container(
                width: 120,
                height: 120,
                color: Colors.black.withOpacity(0.5),
                alignment: Alignment.center,
                child: Text(
                  widget.label,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
