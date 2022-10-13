import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:badges/badges.dart';


class SeconPage extends StatelessWidget {
  const SeconPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Card(
      color: Color(0xFF070A0D),
      child:   Padding(padding: EdgeInsets.fromLTRB(8, 0, 12, .0),
           child: ListTile(
            leading: Badge(
            
                            badgeColor: Colors.green,
              animationType: BadgeAnimationType.scale,
             // badgeContent: Text('1'),
             position: BadgePosition.topEnd(),  
              child: CircleAvatar(backgroundImage: AssetImage('assets/images/gl1.png'),
              ),
            ),
            title: Text('Daniel Atkins',style: TextStyle(fontSize: 16,color: Colors.white,),
            ),
            subtitle: Text('The weather will be perfect xxccxccxccxccxccxccxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxcfor the st...',
            style:TextStyle(color: Colors.white,overflow: TextOverflow.ellipsis),
            ),
            onTap: () {
              
            },
            trailing: Badge(
              badgeColor: Colors.red,
              animationType: BadgeAnimationType.scale,
              badgeContent: Text('1'),
             position: BadgePosition.topEnd(),            
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
               mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.done_all,color:Color(0xFF7A7A7A),size: 20,),
                  SizedBox(width: 5,),
                  Text('11:24 pm',style: TextStyle(color:Color(0xFF005FFF)),)
                ],
                
              ),
            ),
           ),
           ),
    );
  }
}