
import 'package:date_format/date_format.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_2_figma_2/chats_pages_figma/model/massage_model.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ChatViewPages extends StatefulWidget {
  const ChatViewPages({Key? key}) : super(key: key);

  @override
  State<ChatViewPages> createState() => _ChatViewPagesState();
}

class _ChatViewPagesState extends State<ChatViewPages> {
 
  TextEditingController _massageController=TextEditingController();
   
   void sendMessage({
    required DateTime? date,
    required bool isMymassage,
    required String? userImage,
   })
   {
    final text =_massageController.text;
    if(text.isEmpty)return;
MassageModel? newMessage=MassageModel(
  message: text.trim(), 
  sendAt: date,
   isMymassage: isMymassage, 
   userImage: userImage);
   _messageList.add(newMessage);
   _massageController.clear();
   setState(() {
     
   });
   }

   final List<MassageModel>_messageList=[];
   @override
  void initState() {
    MassageModel(message:'Who was that photographer you shared with me recently? ',
     sendAt: DateTime.now(),
      isMymassage:false,
       userImage:'assets/images/pic.png');
           MassageModel(message:'Who was that photographer you shared with me recently? ',
     sendAt: DateTime.now(),
      isMymassage:true,
       userImage:'assets/images/pic.png');
           MassageModel(message:'Who was that photographer you shared with me recently? ',
     sendAt: DateTime.now(),
      isMymassage:false,
       userImage:'assets/images/pic.png');
           MassageModel(message:'Who was that photographer you shared with me recently? ',
     sendAt: DateTime.now(),
      isMymassage:true,
       userImage:'assets/images/pic.png');
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    
return Scaffold(
  appBar: AppBar(
    centerTitle: true,
    backgroundColor: Colors.white,
    elevation: .5,
    leading: Badge(
      badgeContent: Text('1',style:TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.w500,
        color: Colors.black),
        ),
        position: BadgePosition(
          top: 1,
          start: 32,
        ),
        child: Icon(Icons.chevron_left_outlined,
        size: 30,),
    ),
    actions: [

Badge(
  position: BadgePosition.topEnd(),
  badgeColor: Colors.green,
  borderSide: BorderSide(width: 2,color: Colors.white),
  child:  CircleAvatar(
    backgroundImage:AssetImage('assets/images/glavni6.jpg'),
  ),
),
SizedBox(
  width: 8,
)

    ],
    title:Center(
      child: Column(
        children: [

          Text('Sandra Dorsett',style: TextStyle(fontFamily: 'SFPro',
          color: Colors.black,
          fontWeight: FontWeight.w700,
          fontSize: 16),),



          Text('Seen 1 hour ago',style: TextStyle(
            fontFamily: 'SFPro',
            fontWeight: FontWeight.w400,
            color: Colors.black          ),)
        ],
      ),
    )
  ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          SafeArea(child: ListView.separated(
            padding: EdgeInsets.only(
              top: 20,
            ),
            itemBuilder:(context, index) {
       final  massageModel=_messageList[index]; 
            return MessageWidget(massageModel: massageModel);

            },
             separatorBuilder:(context, index) => SizedBox(
              height: 6,
             ),
              itemCount:_messageList.length))
        ],
      )
    
);

  }
  
}






class CustomContextMenu extends StatelessWidget {
  final Widget ch;
  const CustomContextMenu({Key? key,
  required this.ch}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoContextMenu(actions:[
            CupertinoContextMenuAction(child: Text('Edit')),
            CupertinoContextMenuAction(child: Text('Delete')), 
    ],
    previewBuilder:(context, animation, child) =>
     FadeTransition(opacity: animation,
     child: child,),
     child: Material(color: Colors.transparent,child:ch,));
    
  }
}

class MessageWidget extends StatelessWidget {
  final MassageModel? massageModel;
  const MessageWidget({Key? key,
  required this.massageModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return massageModel!.isMymassage!
    ? Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(
          width: 250,
          child: Card(
            elevation: .0,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft:Radius.circular(16),
                topRight: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
              child: GridView.custom(
                gridDelegate:SliverQuiltedGridDelegate(
                  crossAxisCount: 2,
                  mainAxisSpacing: 2,
                  crossAxisSpacing: 2,
                  repeatPattern: QuiltedGridRepeatPattern.inverted,
                   pattern:[
                    const QuiltedGridTile(2, 1),
                    const QuiltedGridTile(1, 1),
                    const QuiltedGridTile(1, 1),
                   ]
                   ),

                childrenDelegate:SliverChildListDelegate([
               Image.asset('assets/images/robot.jpg',
               fit: BoxFit.cover,),
             
                 Image.asset('assets/images/glavni.jpg',
                 fit: BoxFit.cover,),

                 Image.asset('assets/images/glavni3.png'),
  
                ]
                )
                ),
            ),
          ),
        ),
         Card(
          elevation: .0,
          color: Colors.transparent,
          margin:EdgeInsets.symmetric(horizontal:8),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child:CustomContextMenu(ch: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Card(
                  elevation: .0,
                  color: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft:Radius.circular(16),
                          topRight:Radius.circular(16),
                              bottomLeft:Radius.circular(16),
                      
                    )
                  ),
                  child: Padding(padding: 
                  EdgeInsets.symmetric(
                    horizontal: 16,vertical: 8,
                  ),
                  child:Text(massageModel!.message ??  'Who was that photographer you shared with me recently? ',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'SFPro',
                  ),),
                  ),   
                ),
                Padding(padding: EdgeInsets.only(left: 8),
                child:Text(
                  formatDate(massageModel!.sendAt ?? DateTime.now(),
                  [HH, ':',nn]),
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'SFPro',
                  ),
                ))


              ],

            ))
          ),
        )
       
      ]
    ):Card(
      elevation: .0,
      color: Colors.transparent,
      margin: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [

          Expanded(child: CircleAvatar(
            radius: 16,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                massageModel!.userImage ??'assets/image/user_1.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
          ),
          Expanded(child:
           CustomContextMenu(ch: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Card(
                  elevation: .0,
                  margin: EdgeInsets.only(left: 8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                      
                    ),
                    side: BorderSide(
                      width: 1,color: Colors.grey,

                    ),
                    
                  ),
                  child: Padding(padding:EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 16,
                    
                  ),
                  child: Text(massageModel!.message ?? 'who has phptograph ',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'SFPro',
                  ),),
                  ),

                )
            ],
          ),    
          )
          )
          
          )
        ],
      ),
    );
  
  }
}
