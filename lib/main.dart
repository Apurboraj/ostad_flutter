import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    title: "Leaning App",
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Leaning App",style: TextStyle(
          fontSize: 25,
          color: Colors.white,
        ),),
        centerTitle: true,
      ),
      body: Column(
      children: [
      Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: (){
            print("This is a button");
          }, child: Text("Send",style: TextStyle(color: Colors.white,fontSize: 25),)),
      ),
        Icon(Icons.add_a_photo,size: 50, color: Colors.red,),
        TextButton(onPressed: (){
          print("I'm text button");
        }, child: Text("Click me",style: TextStyle(color: Colors.blue,fontSize: 25),)),
        IconButton(onPressed: (){
          print("I'm a icon button");
        }, icon: Icon(Icons.add_a_photo,size: 50, color: Colors.red,)),


        InkWell(
          onTap: (){
            print("I'm inkwell");
          },
          onHover: (value){
            print("I'm inkwell hover");
          },
          onLongPress: (){
            print("I'm inkwell long press");
          },
          child: Container(
            height: 200,
            width: 200,
            margin: EdgeInsets.only(top: 50),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.deepPurpleAccent,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
              border: Border.all(color: Colors.black,width: 3),
              gradient: LinearGradient(colors: [Colors.yellow.shade300,Colors.orange,Colors.red,Colors.black],
              begin:Alignment.topLeft,
              end:Alignment.bottomRight,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10,
                  spreadRadius: 5,
                  offset: Offset(5, 5)
                )
              ],
            ),
            child: Text("This is a container",style: TextStyle(color: Colors.blue,fontSize: 25),),
          ),
        ),
        GestureDetector(
          child: Container(
            height: 200,
            width: 200,
            margin: EdgeInsets.only(top: 50),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.deepPurpleAccent,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
              border: Border.all(color: Colors.black,width: 3),
              gradient: LinearGradient(colors: [Colors.green,Colors.orange.withOpacity(0.5),Colors.black],
                begin:Alignment.topLeft,
                end:Alignment.bottomRight,
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10,
                    spreadRadius: 5,
                    offset: Offset(0, 5)
                )
              ],
            ),
            child: Text("This is a GestureDetector",style: TextStyle(color: Colors.blue,fontSize: 25),),
          ),
        ),
      ],
    ),
   ),
  ));
}