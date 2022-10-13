import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class BubbleStories extends StatefulWidget {
  const BubbleStories({Key? key}) : super(key: key);

  @override
  State<BubbleStories> createState() => _BubbleStoriesState();
}

class _BubbleStoriesState extends State<BubbleStories> {
  @override
  Widget build(BuildContext context) {
    return  Padding(padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.grey),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Name'),
                ],
              ),
              
              );
  }
}