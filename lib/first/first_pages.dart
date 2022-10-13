import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_2_figma_2/second/second_pages.dart';
import 'package:flutter_svg/flutter_svg.dart';
class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  //final controller=PageController(
   // initialPage: 1
  //);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF070A0D),
      appBar: AppBar(
        
        backgroundColor: Color(0xFF101418),
        title: Text('Stream chat'),

        centerTitle: true,
        actions: [
         
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset('assets/svg/Icon.svg'),
        ),
        
        ],
       
  leading: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/pic.png')),color:Color(0xFF101418),
      borderRadius:BorderRadius.circular(30) ),
    
    ),
  ),
      ),
      body:PageView(
        children: [
           Column(
        children: [
        
          Padding(padding: EdgeInsets.all(8),
          child:Container(
          
            height: 40,
            child: TextField(
              
            
              obscureText: true,
              decoration: InputDecoration(
            
                enabledBorder:OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red,width: 2)
                ),
              isDense: true,
                enabled: true,
                prefixIcon: Icon(Icons.search,color: Colors.white,),
                labelText: 'input',labelStyle: TextStyle(color: Colors.red),
                hintText: 'Search',
                hintStyle: TextStyle(color:Color(0xFF7A7A7A)),
                
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),),  
          //  border:InputBorder.none,

              ),
              
            ),
          )

          ),
          Expanded(
            child: ListView.builder(
          shrinkWrap: true,
          itemCount: 20,
          itemBuilder: (context, index) => const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: SeconPage(),
          ),
        ),
        
      ),
        ],
      ),
  
        Center(
          
          child:Container(
            color: Colors.white,
            child: SvgPicture.asset('assets/svg/chat.png')),
        ),
      
        ],
      ),
    bottomNavigationBar: NavigationBarTheme(data: NavigationBarThemeData(
       labelTextStyle: MaterialStateProperty.all<TextStyle>(
        TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.white)
       ),
       backgroundColor:Color(0xFF101418),
       indicatorColor: Colors.transparent
    ),
    
     child:NavigationBar(
      destinations: [
      NavigationDestination(
        
        icon: Badge(
        //  position: BadgePosition.topEnd(),
          padding: EdgeInsets.fromLTRB(6, 2, 6, 2),
          shape: BadgeShape.square,
          borderRadius: BorderRadius.circular(10),
          badgeColor: Colors.red,
          badgeContent: Text('82',style:TextStyle(color: Colors.white),),
         animationType: BadgeAnimationType.slide,
          child: Icon(CupertinoIcons.chat_bubble,
              color: Color(0xFF7A7A7A),
              size: 30,),
        ), 
      label: 'Chats',),


      
      NavigationDestination(icon:
      
       Badge(
         padding: EdgeInsets.fromLTRB(6, 2, 6, 2),
          shape: BadgeShape.square,
          borderRadius: BorderRadius.circular(10),
          badgeColor: Colors.red,
          badgeContent: Text('12',style:TextStyle(color: Colors.white),),
         animationType: BadgeAnimationType.slide,
         child: Icon(Icons.alternate_email,
             size: 30,
             color:Color(0xFF7A7A7A),),
       ),
       label: 'Mentions',)
     ],
    )
    
     ),
 floatingActionButton: FloatingActionButton(onPressed: (){
    Navigator.pushNamed(context,'/third');
 }),

    );
  }
}