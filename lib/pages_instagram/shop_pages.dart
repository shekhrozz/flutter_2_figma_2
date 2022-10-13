import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Usershop extends StatefulWidget {
  const Usershop({Key? key}) : super(key: key);

  @override
  State<Usershop> createState() => _UsershopState();
}

class _UsershopState extends State<Usershop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   Center(child: Text('Shop'),),   
    );
  }
}