import 'package:flutter/material.dart';

class ListItems<T> extends StatelessWidget {
  const ListItems({
    super.key,
    required this.items,
    required this.itemBuilder,
    this.height = 251.51,
    this.spacing = 15,
    this.scrollDirection = Axis.horizontal,
    this.padding,
    this.physics,
  });

  final List<T> items;
  final Widget Function(BuildContext context, T item, int index) itemBuilder;
  final double height;
  final double spacing;
  final Axis scrollDirection;
  final EdgeInsetsGeometry? padding;
  final ScrollPhysics? physics;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: scrollDirection == Axis.horizontal ? height : null,
      child: ListView.separated(
        padding: padding,
        physics: physics,
        scrollDirection: scrollDirection,
        itemCount: items.length,
        separatorBuilder: (context, index) => SizedBox(
          width: scrollDirection == Axis.horizontal ? spacing : 0,
          height: scrollDirection == Axis.vertical ? spacing : 0,
        ),
        itemBuilder: (context, index) => itemBuilder(context, items[index], index),
      ),
    );
  }
}