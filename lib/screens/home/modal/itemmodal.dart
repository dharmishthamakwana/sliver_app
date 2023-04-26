import 'package:flutter/material.dart';

class ItemModal{
  String? name ,value;
  IconData? icon;
  bool? accepting;

  ItemModal({this.name, this.value, this.icon, this.accepting = false});
}