import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Usersearch extends StatefulWidget {
  const Usersearch({Key? key}) : super(key: key);

  @override
  State<Usersearch> createState() => _UsersearchState();
}

class _UsersearchState extends State<Usersearch> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body:   Center(child: Text('Search'),),
    );
  }
}