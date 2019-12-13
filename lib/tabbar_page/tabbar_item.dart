import 'package:flutter/material.dart';

class TabbarItem {
  int index;
  bool isSelected;
  String title;
  String iconName;
  Icon icon;
  TabbarItem({
    this.index,
    this.isSelected,
    this.title,
    this.iconName,
    this.icon,
  });
}
