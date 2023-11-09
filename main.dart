import 'package:dummy/tabs/call.dart';
import 'package:dummy/tabs/camera.dart';
import 'package:dummy/tabs/chat.dart';
import 'package:dummy/tabs/status.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
 void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:new ThemeData(primaryColor: new Color(0xff075e54),
      accentColor:new Color(0xff25d366)),
     home:Myapp())
     );
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> with SingleTickerProviderStateMixin{
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 4, vsync: this,initialIndex: 1)..addListener(() {
      setState(() {
        
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return  
      
     Scaffold(
        appBar: AppBar(
          title:Text("WhatsApp"),
          backgroundColor:new Color(0xff075e54) ,
          actions: [
            IconButton(onPressed: (){}, icon: Icon(
              Icons.search,
              color: Colors.white,
            )),
            IconButton(onPressed: (){}, icon: Icon(
              Icons.more_vert,
              color: Colors.white,
            )),
          ],

          bottom: TabBar(
            indicatorColor: Colors.white,
            controller: _tabController,
            tabs: [
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                text: "Chats",
              ),
              Tab(
                text: "Status",
              ),
              Tab(
                text: "Call",
              )
            ], ),
          ),

          body: TabBarView(
              controller: _tabController,
              children:[
                Camera(),
                Chats(),
                Status(),
                WhatsAppCall()
          
              ]),
          

            floatingActionButton:_tabController.index==0?
            FloatingActionButton(onPressed: () {
              
            },
            child: Icon(Icons.camera),)
            :_tabController.index==1?  
            FloatingActionButton(onPressed: () {
              
            },
            child: Icon(Icons.message),)
            :_tabController.index==2?
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                
                Container(
                  height: 70,
                  child: SizedBox(
                    height: 45.0,
                    width: 45.0,
                    child: FloatingActionButton(onPressed: (){},
                    child: Icon(Icons.edit,
                    color: Colors.blueGrey,),
                    backgroundColor: Colors.white,),
                  ),
                ),
                FloatingActionButton(onPressed: () {
                  
                },
                child: Icon(Icons.camera_alt,),
                ),
              ],
            )
            :
            FloatingActionButton(onPressed: () {
              
            },
             child: Icon(Icons.add_call),)
              
      ); 
    
  }
}