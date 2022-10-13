import 'package:flutter/material.dart';
import 'package:flutter_2_figma_2/facebook/home/home_pages.dart';
import 'package:flutter_2_figma_2/facebook/widgets/reels_widgets.dart';
import 'package:flutter_2_figma_2/facebook/widgets/story_card_widget.dart';
import 'package:flutter_2_figma_2/facebook/widgets/story_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';


class FacebookPages extends StatefulWidget {
  const FacebookPages({Key? key}) : super(key: key);

  @override
  State<FacebookPages> createState() => _FacebookPagesState();
}

class _FacebookPagesState extends State<FacebookPages> {
 // final _controller=ScrollController(); 
int count=0;
 List<Story> _liststory=[
  Story(
    username: 'Rakesh', 
    userimage: 'assets/images/glavni.jpg', 
    storyimage: 'assets/images/glavni.jpg'
    ),
     Story(
    username: 'Name', 
    userimage: 'assets/images/glavni3.png', 
    storyimage: 'assets/images/glavni3.png'
    ),
     Story(
    username: 'Rflash', 
    userimage: 'assets/images/glavni4.png', 
    storyimage: 'assets/images/glavni4.png'
    ),
     Story(
    username: 'Rakesh', 
    userimage: 'assets/images/glavni5.jpg', 
    storyimage: 'assets/images/glavni5.jpg'
    ),
     Story(
    username: 'Rakesh', 
    userimage: 'assets/images/glavni6.jpg', 
    storyimage: 'assets/images/glavni5.jpg'
    ),
 ];
     

  @override
  Widget build(BuildContext context) {
   /// final text =MediaQuery.of(context).platformBrightness==Brightness.dark
  //  ?'DarkTheme'
   // :'LigtTheme';
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar:AppBar(
          elevation: .0,
          backgroundColor: Colors.white,
//controller:_controller,
          actions: [
 
       // ChangeThemeButtonWidget(),
   

            IconButton(
              onPressed: (){},
               icon:Icon(MdiIcons.facebookMessenger,
               color: Colors.blue,
               size: 30,
               )),

              
          ],
          title: ShaderMask(
          blendMode: BlendMode.srcIn,
            shaderCallback:(bounds) => 
          LinearGradient(
            begin: FractionalOffset.centerRight,
            end: FractionalOffset.centerLeft,
            colors: [
    Color(0xFF384CFF), 
    Color(0xFF00A3FF),

          ]).createShader(bounds),
          child: Text('facebook',
          style: GoogleFonts.abel(fontSize:20,fontWeight: FontWeight.w800),
          )
          ),
          bottom:  TabBar(
            
              padding: EdgeInsets.symmetric(horizontal: 10),
              labelColor: const Color(0xFF384CFF),
              indicator: const UnderlineTabIndicator(
                  insets: EdgeInsets.symmetric(horizontal: 30),
                  borderSide: BorderSide(width:5, color: Colors.blue)),
              indicatorColor: const Color(0xFF384CFF),
              indicatorWeight: 2.0,
            tabs: [
                   SvgPicture.asset('assets/svg/Iconn2.svg',
                   height: 50,
                   width: 50,),
                    SvgPicture.asset('assets/svg/Iconn.svg',
                   height: 50,
                   width: 50,),
                    SvgPicture.asset('assets/svg/Iconn4.svg',
                   height: 50,
                   width: 50,),
                   SvgPicture.asset('assets/svg/Iconn6.svg',
                   height: 50,
                   width: 50,),
                   SvgPicture.asset('assets/svg/Icon6.svg',
                   height: 50,
                   width: 50,),
                    SvgPicture.asset('assets/svg/Icon6.svg',
                   height: 50,
                   width: 50,),
                   //SvgPicture.asset('assets/svg/Iconmenu.svg.svg',
                   //height: 50,
                  // width: 50,)   
                ]
                ),
        ),
          body: TabBarView(children: [

              SingleChildScrollView(
           // controller: _controller,
            child: Column(
              children: [
               HomePage(),

               Padding(padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
                
               ),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   ReelsWidget(icon: Icons.video_collection_outlined,
                   onPress: (){},
                    color: const Color(0xFFF9C50F),
                     title: 'Reels'),
                      ReelsWidget(icon: Icons.camera_alt,
                   onPress: (){},
                    color:const Color(0xFF44C041),
                     title: 'Room'),
                      ReelsWidget(icon:  Icons.people,
                   onPress: (){},
                    color:  const Color(0xFFFC6565),
                     title: 'Group'),
                      ReelsWidget(icon: Icons.live_tv_rounded,
                   onPress: (){},
                    color: const Color(0xFF486BE5),
                     title: 'Live'),
                 ],   
               ),
               ),
               SizedBox(
                width: 390,
                height: 172,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder:(context, index) => StoryCardWidget(index: index, story:_liststory[index]), 
                  separatorBuilder:(context, index) => SizedBox(width: 5,), 
                  itemCount: _liststory.length),
               ),
               Divider(thickness: 1,),
               CarWidget(),
              ],
              
            ),
          ),
          Container(),
             Container(),
                Container(),
                   Container(),
                     Container(),
          ]
          ),

  floatingActionButton:  FloatingActionButton(onPressed: (){

    Navigator.pushNamed(context,'/chat');
  }),
          
      ),

      
    );
  }
  
}

class CarWidget extends StatelessWidget {
  const CarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Padding(padding: 
    EdgeInsets.all(5),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      
      children: [
      
      ListTile(
        enabled: true,
        leading:Container(
          height: 60,
          width: 60,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            shape: BoxShape.rectangle,
            border:Border.all(
              width: 10,
              color: Colors.white,
            ),
            image: DecorationImage(image: AssetImage('assets/images/glavni6.jpg'),fit: BoxFit.cover),
          
          ),
        ),
        title: Text('DDeven Mastery000'),
        trailing: RotatedBox(quarterTurns: 1,child: Icon(Icons.more_horiz_sharp),),
        subtitle: Text('Mumbai'),
      ),
      SizedBox(
        height: 7,
      ),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Old is gold👍❤️ 👍❤️',style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.w400),),
          ),
        ],
      ),
          SizedBox(
            height: 250,
            width: 400,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/glavni6.jpg'),
                fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SvgPicture.asset('assets/svg/Iconn2.svg',height: 21,
                width: 21,),
                SizedBox(width: 5,),
                 SvgPicture.asset('assets/svg/Iconn4.svg',width: 21,),
                       SizedBox(width: 5,),
                          Icon(MdiIcons.facebookMessenger,size: 21,),         
              ]
            ),
          ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                  children: [
                    SizedBox(
                      width: 70,
                      child: Stack(
                        children: [
                        
                           Positioned(
                            left: 30,
                             child: Container(
                              alignment: Alignment.center,
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100,),color:Colors.blue,
                                border: Border.all(width: 3,color: Colors.white),
                                
                              ),
                              child:SvgPicture.asset('assets/svg/like.svg',width: 20,)
                                                   ),
                           ),
                             Container(
                            alignment: Alignment.center,
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100,),color:Colors.red,
                              border: Border.all(width: 3,color: Colors.white),   
                            ),
                            child: Icon(Icons.favorite,color: Colors.white,),
                          ),
                        ],
                      ),
                    ),
                    Text('Liked kamle liked like number bla bla',style: TextStyle(color: Colors.black,fontSize: 15),)          
                          ],
                            ),
            )
            
           
      ],
    ),
    );
  }
}
