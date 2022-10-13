

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_2_figma_2/facebook/widgets/story_card_widget.dart';
import 'package:flutter_2_figma_2/pages_instagram/bubble_stories.dart';
import 'package:flutter_2_figma_2/pages_instagram/models/post_model.dart';
import 'package:flutter_2_figma_2/pages_instagram/models/story_instamodel.dart';
import 'package:flutter_2_figma_2/pages_instagram/models/widgets/story_widget.dart';
import 'package:flutter_2_figma_2/pages_instagram/models/my_pointer.dart';
import 'package:flutter_2_figma_2/pages_instagram/models/widgets/indicator_item.class.dart';


class Userhome extends StatefulWidget {
  const Userhome({Key? key}) : super(key: key);

  @override
  State<Userhome> createState() => _UserhomeState();
}

class _UserhomeState extends State<Userhome> {
  late final List<StoryInstaModel> _users=[];
  late final List<PostModel> _posts=[];
  PostModel? post;
  
  @override
 void initState() {
    _users.addAll([
  StoryInstaModel(image: 'assets/images/user_photo.png', username: 'hey'),
   StoryInstaModel(image: 'assets/images/user_photo.png', username: 'hey'),
    StoryInstaModel(image: 'assets/images/user_photo.png', username: 'hey'),
     StoryInstaModel(image: 'assets/images/user_photo.png', username: 'hey'),
      StoryInstaModel(image: 'assets/images/user_photo.png', username: 'hey'),
       StoryInstaModel(image: 'assets/images/user_photo.png', username: 'hey'),
        StoryInstaModel(image: 'assets/images/user_photo.png', username: 'hey'),
         StoryInstaModel(image: 'assets/images/user_photo.png', username: 'hey'),
          StoryInstaModel(image: 'assets/images/user_photo.png', username: 'hey'),
           StoryInstaModel(image: 'assets/images/user_photo.png', username: 'hey'),
            StoryInstaModel(image: 'assets/images/user_photo.png', username: 'hey'),
    ],
    );
    _posts.addAll([
      for(var i=0;i<7;i++)
      PostModel(username: 'Joshua',
       userImage: 'assets/images/glavni.jpg',
        datetime:'Octamber 2', comment:'It is very very Lampashsha',
         isVIP:i.isEven ?true:false,
          location:'Tokio Mokiyo',
           imagelist:[
            'assets/images/glavni3.png',
            'assets/images/glavni4.png',
            'assets/images/glavni5.jpg',
           ]),
          
    ]);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       backgroundColor: Colors.transparent,
        elevation: .0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Instagram',style:TextStyle(fontSize: 20,color: Colors.black),),
            Icon(Icons.add,color: Colors.red,),
            Icon(Icons.favorite,color: Colors.red,),
            Icon(Icons.share,color: Colors.red,),
          ],
        ),
      ),
      body: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 70,
            child: ListView.separated(
scrollDirection:Axis.horizontal,
              itemBuilder:(context, index) => 
              StoryCardsss(story: _users[index]),
              separatorBuilder:(context, index) => SizedBox(width: 5,), 
              itemCount: _users.length),
          ),
          Divider(
            thickness: 5,
          ),

        ListView.builder(
          primary: false,
          shrinkWrap: true,
          itemCount: _posts.length,
         // scrollDirection:Axis.vertical,
          itemBuilder:(context, index) {
          PostModel post =_posts[index];
          int counter=1;
          return StatefulBuilder(builder:(context, setStateLocal) {
            return Card(
             // color: Colors.red,
              elevation: .0,
              margin: EdgeInsets.zero,
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      radius:16,
                      backgroundImage: AssetImage(post.userImage),
                    ),
                    title: Text(post.username),
                    subtitle: Text(post.comment),
                    trailing: Icon(Icons.more_horiz_outlined),
                  ),
                  SizedBox(
                    height: 375,
                  //  width: 200,
                    child: Stack(
                      children: [
                        PageView.builder(
                          onPageChanged:(newIndex) {
                            log(newIndex.toString());
                            setStateLocal(() {
                              counter=newIndex+1;
                              log(counter.toString());
                            },);

                          },
                          itemCount: post.imagelist.length,
                          itemBuilder:(context, index) {
                          final String image=post.imagelist[index];
                          return Image.asset(image,
                          fit: BoxFit.cover,);
                        },
                        ),
                        Positioned(
                          top: 14,
                          right: 14,
                          child: Card(
                              color: Colors.grey,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14)
                            ),
                        
                        child: Padding(padding: EdgeInsets.all(8),
                        child: Text('$counter/${post.imagelist.length}'),),
                        ))
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(10),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.favorite_border_rounded),
                      SizedBox(width: 10,),
                      Icon(Icons.chat_bubble_outline_outlined),
                      SizedBox(width: 10,),
                      Image.asset(   'assets/images/message.png',
                      width: 23,),
                      SizedBox(width: 90,),

                      Card(
                      
                        child: SizedBox(
                          height:6,
                          width:27,//*post.imagelist.length+4*(post.imagelist.length-1),

                       child: ListView.separated(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemBuilder:(context, index) => 
                        Indicator(isSelected: counter==index+1),
                          separatorBuilder:(context, index) => SizedBox(width:4,),
                           itemCount:3),
                           // post.imagelist.length),
                        ),
                      ),
                      SizedBox(width: 100,),
                      Icon(Icons.bookmark_border)
                    ],
                  ) ,)


                ],
              )
            );
          },
          );
        },)
        ],
        
      ),
      )
    
    );
  }
}