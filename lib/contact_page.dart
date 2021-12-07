
import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
         title:const  Text("Contact",
         style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
         ),

actions: [const Icon(Icons.more_vert),], 
      ),
      body: ListView(
        children: [
          Card(
            margin: const EdgeInsets.all(0),
            child: Column(children:const [
              SizedBox(height: 20,),
              CircleAvatar(
                   radius: 50,
                backgroundImage: AssetImage("images/woman.jpg"),
              ),
              SizedBox(
                height: 20,
              ),
            Text(
              "Barikisu Awudu",
               style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold ),
               ),
            Text("Wa Upperwest"),
            SizedBox(
              height: 20,
            )
          ],
       ),
      ),
      //  
        ],
      ),
    );
  }
}