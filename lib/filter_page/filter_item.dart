import 'package:flutter/material.dart';

enum ArrowType {
  none,
  arrow,
  turn,
}

class FilterItem {
  int index;
  String iconName;
  String title;
  ArrowType arrowType;
  Icon icon;

  FilterItem({
    this.index,
    this.iconName,
    this.title,
    this.arrowType,
    this.icon,
  });
}
