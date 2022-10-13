import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Userreels extends StatefulWidget {
  const Userreels({Key? key}) : super(key: key);

  @override
  State<Userreels> createState() => _UserreelsState();
}

class _UserreelsState extends State<Userreels> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:    Center(child: Text('Reels'),),
    );
  }
}