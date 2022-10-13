
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage>{  
  DateTime data=DateTime(2022,07,15);
  bool first=false;
  bool second=false;
  bool third=false;
  
@override

  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor:  Color(0xFF544794),
      appBar: AppBar(
            backgroundColor:  Color(0xFF544794),
        title: Text('Task List'),        
        actions: [
         
          Icon(Icons.delete),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.person_add)
        ],
      ),
      drawer: Drawer(
        backgroundColor: Color(0xFF201F24),
     
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: ListView(
          children: [
            ListTile(
              leading: CircleAvatar(backgroundColor:Color(0xFF544794),radius: 30,
              child: Text('SB'),),
              title: Text('Shekhroz Berdiyev',style: TextStyle(fontSize: 14,color: Color(0xFFE6E1E5)),),
              subtitle: Text('shekhrozberdiyev27.gmail.com',style: TextStyle(fontSize: 10,color: Color(0xFFE6E1E5)),
              )
            ),
            Divider(
              thickness: 5,
              color: Color(0xFF61E6E1E5),
            ),
            Container(
              height: 58,
    
              width: double.infinity,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey,),
             child: TextField(
              decoration: InputDecoration(
                
    
                suffixIcon: Icon(Icons.search,color: Color(0xFF544794),),
                hintText: 'Search',
                hintStyle: TextStyle(color: Color(0xFF544794)),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey,width: 2))
              ),
             ),
            ),
            ListTile(
              leading: Icon(Icons.star,size: 40,color: Color(0xFFD9415E),),
              title: Text('Important',style: TextStyle(fontSize: 20,color: Color(0xFFE6E1E5)),),
              trailing: Icon(Icons.arrow_forward_ios_rounded,color:Colors.white,size: 15,),
            ),
             Divider(
              thickness: 5,
              color: Color(0xFF61E6E1E5),
            ),
            _listtilefor(icon:Icons.home,
             title: 'Task', 
             trailing: Icons.arrow_forward_ios_rounded),
             _listtilefor(icon:Icons.home,
             title: 'Task', 
             trailing: Icons.arrow_forward_ios_rounded),
             _listtilefor(icon:Icons.home,
             title: 'Task', 
             trailing: Icons.arrow_forward_ios_rounded)
           
          ],
        ),
      ),
       
      
      
      ),
      
     body: ListView(
      children: [
        checkbox(),
         checkbox(),
          checkbox(),
      ],
     ),
     floatingActionButton: FloatingActionButton(onPressed: (){
      Navigator.pushNamed(context, '/fourth');
     }),
    );
  
  }
  Widget dat(){
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('${data.year}/${data.month}/${data.day}',
          style: TextStyle(fontSize: 32),),
          SizedBox(height: 16,),

          ElevatedButton(onPressed: ()async{
             DateTime? newdate=await
            showDatePicker(context: context, initialDate: data, firstDate:DateTime(2020), lastDate:DateTime(2050));
     if (newdate!=null)return;
      

            setState(() {
              data=newdate!;
            });
          },child:Text('Selected date'),
       

           )
          
        ],
      ),
    );
  } 

  Widget checkbox(){
    return CheckboxListTile(value: first,
     onChanged:(value){

    //  _showMassageDialog();
    dat();
      setState(() {
        first=value!;
        
      });
     },
     checkColor: Colors.black,
     title:Text('Task Name',style: TextStyle(color: Colors.white,fontSize: 20),),
     activeColor: Colors.green,
     
     
     );
     
  }

    _showMassageDialog(){
      showDialog(context: context, builder:(context) => 
      AlertDialog(
        title: Text('Are you sure'),
        content: Text('Task will be pernanatly deleted'),
        actions: [
          CupertinoButton(child: Text('Cancel '), onPressed:() => Navigator.of(context).pop(),),
          CupertinoButton(child: Text('Cancel '), onPressed:() => Navigator.of(context).pop(),)
        ],
      ),
      );
    }

  Widget _listtilefor({required IconData icon,required String title, required IconData trailing}){
    return ListTile(
      leading: Icon(icon,size: 40,color: Color(0xFF544794),),
      title: Text(title,style: TextStyle(fontSize: 20,color: Color(0xFFE6E1E5)),),
      trailing: Icon(trailing ,color:Colors.white,size: 15,),
    );
    
  }
}