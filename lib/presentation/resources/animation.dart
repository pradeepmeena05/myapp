import 'package:flutter/material.dart';

class StaggeredSlideList extends StatefulWidget {
  final List<Widget> children;
  final Duration duration;
  final Curve curve;
  final Offset offset;

  const StaggeredSlideList({
    super.key,
    required this.children,
    this.duration = const Duration(milliseconds: 1200),
    this.curve = Curves.easeOut,
    this.offset = const Offset(-1, 0),
  });

  @override
  State<StaggeredSlideList> createState() => _StaggeredSlideListState();
}

class _StaggeredSlideListState extends State<StaggeredSlideList>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late List<Animation<Offset>> _animations;

  @override
  void initState() {
    super.initState();
    
    _controller = AnimationController(vsync: this, duration: widget.duration);

    final count = widget.children.length;

    _animations = List.generate(count, (index) {
      final start = index * 0.1;
      final end = start + 0.4;

      return Tween<Offset>(
        begin: widget.offset,
        end: Offset.zero,
      ).animate(
        CurvedAnimation(
          parent: _controller,
          curve: Interval(
            start.clamp(0.0, 1.0),
            end.clamp(0.0, 1.0),
            curve: widget.curve,
          ),
        ),
      );
    });

     Future.delayed(Duration(seconds: 5),(){
      _controller.forward();
     });_controller.forward();

    
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(widget.children.length, (index) {
        return SlideTransition(
          position: _animations[index],
          child: widget.children[index],
        );
      }),
    );
  }
}
