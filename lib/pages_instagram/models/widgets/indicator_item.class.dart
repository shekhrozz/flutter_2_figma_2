import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Indicator extends StatelessWidget {
  final bool isSelected;
  const Indicator({Key? key,
  required this.isSelected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return AnimatedContainer(duration: Duration(milliseconds: 200),
    height: 6,
    width: 6,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: isSelected ? Colors.blue :Colors.grey,
    ),);
  }
}