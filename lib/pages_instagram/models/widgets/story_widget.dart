import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_2_figma_2/pages_instagram/models/my_pointer.dart';
import 'package:flutter_2_figma_2/pages_instagram/models/story_instamodel.dart';

class StoryCardsss extends StatelessWidget {
StoryInstaModel story;
 StoryCardsss({Key? key,required this.story}) : super(key: key);

  @override
  Widget build(BuildContext context) {

   return Padding(
     padding: const EdgeInsets.all(8.0),
     child: Card(
      elevation: .0,
      margin: EdgeInsets.zero,
      child: Column(
       // mainAxisAlignment: MainAxisAlignment.center,
      //  crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomPaint(
            painter: MyPainter(),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(story.image,width: 54,),
            ),
          )
        ],
      ),
     ),
   );

  }
}