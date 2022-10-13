import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    
    return  Padding(padding: EdgeInsets.all(8),
    child: Column(
      children: [
        Row(
          children: [

    Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        height: 60,
        width: 52,
        
        decoration: BoxDecoration(image: DecorationImage(
          image: AssetImage('assets/images/glavni.jpg',
          ),
          fit: BoxFit.cover
          ),
        borderRadius: BorderRadius.circular(10),
          ),
      ),
    ),
    SizedBox(
      height: 50,
      width: 220,
      child: TextField(
        
        obscureText: true,
        decoration: InputDecoration(
          suffixIcon: Icon(Icons.image_sharp),
          contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 20),
          hintText: "What's on your mind, Sanjay?",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
        ),
      ),
    ),SizedBox(
      width: 20,
    ),
    Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
      color: Colors.grey),
      // child: Padding(
      //   padding: const EdgeInsets.all(2.0),
      //   child: Icon(Icons.search,
      //   color: Colors.black,),
      // ),
    )
    ],
        ),
        Divider(thickness: 20,
        color:Colors.grey,),
       
      ],
    ),
    );
  
  }
}