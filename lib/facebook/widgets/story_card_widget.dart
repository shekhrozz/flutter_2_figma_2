import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_2_figma_2/facebook/widgets/story_widget.dart';

class StoryCardWidget extends StatelessWidget {

  final int index;
  final Story story;
  const StoryCardWidget({Key? key,
  required this.index,
  required this.story}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 174,
      width: 90,
      child:  Column(
      crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 90,
            height: 130,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(story.userimage!,
              fit:BoxFit.cover,
              height: 130,
              width: 90,),
            ),
          ),
          Transform.translate(offset: Offset(0, -12.5),
          child: Container(
            height: index==0 ? 17:25,
            width: index==0 ?17:25,
            padding: EdgeInsets.all(1),
            decoration: BoxDecoration(
              border: Border.all(
                color:Colors.white,
                width: index ==0 ?1 :0,
                
              ),
              borderRadius: BorderRadius.circular(index==0 ?3 :12.5),color: Colors.red,
              gradient: LinearGradient(
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                colors: [

                  Color(0xFF384CFF),
                  Color(0xFF00A3FF ),

              ])
            ),
            child: index==0 ?
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                
              ),
              alignment: Alignment.center,
              child: Icon(
                Icons.add_box,
                color: Colors.white,
                size: 14,
              ),
            ):Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage(story.storyimage!),
                fit: BoxFit.cover)
              ),
            )
          ),
          ),
          if(index!=0)
          Flexible(
            child: Transform.translate(offset:Offset(0, -12.5),
            child:Text(story.username!,
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w400
            ),)),
          )
        ],
      )
    );
  }
}