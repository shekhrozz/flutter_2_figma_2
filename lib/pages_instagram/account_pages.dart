import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Useraccount extends StatefulWidget {
  const Useraccount({Key? key}) : super(key: key);

  @override
  State<Useraccount> createState() => _UseraccountState();
}

class _UseraccountState extends State<Useraccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   Center(child: Text('body here'),),
    );
  }
}