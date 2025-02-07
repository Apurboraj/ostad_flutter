import 'package:flutter/material.dart';
void main(){
  runApp(myApp());
}


class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ostad Fluter app',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _numberController = TextEditingController();
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Ostad Fluter app",style: TextStyle(
          fontSize: 25,
          color: Colors.white,
        ),),
        centerTitle: true,
      ),
      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
            child: TextField(
              controller: _numberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  filled: false,
                  fillColor: Colors.amberAccent,
                  hintText: "Enter your Phone Number",
                  hintStyle: TextStyle(fontSize: 15,color: Colors.black),
                  hintMaxLines: 2,
                  labelText: "Number",
                  labelStyle: TextStyle(fontSize: 25,color: Colors.blue),
                  helperText: "Please enter your phone Number",
                  helperStyle: TextStyle(fontSize: 15,color: Colors.green),
                  helperMaxLines: 1,
                  //prefixText: "Email: ",
                  //suffixText: "@gmail.com",
                  prefixIcon: Icon(Icons.phone),
                  suffixIcon: Icon(Icons.send),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber,width: 5),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey,width: 2),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
                  )
              ),
            ),
          ),

          Padding(
          padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
          child: TextField(
            controller: _emailController,
            decoration: InputDecoration(
              filled: false,
              fillColor: Colors.amberAccent,
              hintText: "Enter your email",
              hintStyle: TextStyle(fontSize: 15,color: Colors.black),
              hintMaxLines: 2,
              labelText: "Email",
              labelStyle: TextStyle(fontSize: 25,color: Colors.blue),
              helperText: "Please enter your email",
              helperStyle: TextStyle(fontSize: 15,color: Colors.green),
              helperMaxLines: 1,
              //prefixText: "Email: ",
              //suffixText: "@gmail.com",
              prefixIcon: Icon(Icons.email),
              suffixIcon: Icon(Icons.send),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey,width: 5),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey,width: 2),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
              )
            ),
          ),
        ),

          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
            child: TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                  filled: false,
                  fillColor: Colors.amberAccent,
                  hintText: "Enter your Password",
                  hintStyle: TextStyle(fontSize: 15,color: Colors.black),
                  hintMaxLines: 2,
                  labelText: "Password",
                  labelStyle: TextStyle(fontSize: 25,color: Colors.blue),
                  helperText: "Please enter your email",
                  helperStyle: TextStyle(fontSize: 15,color: Colors.green),
                  helperMaxLines: 1,
                  //prefixText: "Email: ",
                  //suffixText: "@gmail.com",
                  prefixIcon: Icon(Icons.password),
                  suffixIcon: Icon(Icons.send),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber,width: 5),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey,width: 2),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
                  )
              ),
            ),
          ),
ElevatedButton(onPressed: (){
  _passwordController.text.length > 6 ? print("password is strong") : print("password is weak");
  print(_numberController.text);
  print(_emailController.text);
  print(_passwordController.text);
}, child: Text("Submit")),

          ElevatedButton(onPressed: (){
            _numberController.clear();
            _emailController.clear();
            _passwordController.clear();
          }, child: Text("Clear")),

///Flutter old class
      //     Center(
      //       child: ElevatedButton(
      //           style: ElevatedButton.styleFrom(
      //             backgroundColor: Colors.green,
      //             shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(10),
      //             ),
      //           ),
      //           onPressed: (){
      //             print("This is a button");
      //           }, child: Text("Send",style: TextStyle(color: Colors.white,fontSize: 25),)),
      //     ),
      //     Icon(Icons.add_a_photo,size: 50, color: Colors.red,),
      //     TextButton(onPressed: (){
      //       print("I'm text button");
      //     }, child: Text("Click me",style: TextStyle(color: Colors.blue,fontSize: 25),)),
      //     IconButton(onPressed: (){
      //       print("I'm a icon button");
      //     }, icon: Icon(Icons.add_a_photo,size: 50, color: Colors.red,)),
      //     InkWell(
      //       onTap: (){
      //         print("I'm inkwell");
      //       },
      //       onHover: (value){
      //         print("I'm inkwell hover");
      //       },
      //       onLongPress: (){
      //         print("I'm inkwell long press");
      //       },
      //       child: Container(
      //         height: 200,
      //         width: 200,
      //         margin: EdgeInsets.only(top: 50),
      //         alignment: Alignment.center,
      //         decoration: BoxDecoration(
      //           color: Colors.deepPurpleAccent,
      //           borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
      //           border: Border.all(color: Colors.black,width: 3),
      //           gradient: LinearGradient(colors: [Colors.yellow.shade300,Colors.orange,Colors.red,Colors.black],
      //             begin:Alignment.topLeft,
      //             end:Alignment.bottomRight,
      //           ),
      //           boxShadow: [
      //             BoxShadow(
      //                 color: Colors.grey,
      //                 blurRadius: 10,
      //                 spreadRadius: 5,
      //                 offset: Offset(5, 5)
      //             )
      //           ],
      //         ),
      //         child: Text("This is a container",style: TextStyle(color: Colors.blue,fontSize: 25),),
      //       ),
      //     ),
      //     GestureDetector(
      //       child: Container(
      //         height: 200,
      //         width: 200,
      //         margin: EdgeInsets.only(top: 50),
      //         alignment: Alignment.center,
      //         decoration: BoxDecoration(
      //           color: Colors.deepPurpleAccent,
      //           borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
      //           border: Border.all(color: Colors.black,width: 3),
      //           gradient: LinearGradient(colors: [Colors.green,Colors.orange.withOpacity(0.5),Colors.black],
      //             begin:Alignment.topLeft,
      //             end:Alignment.bottomRight,
      //           ),
      //           boxShadow: [
      //             BoxShadow(
      //                 color: Colors.grey,
      //                 blurRadius: 10,
      //                 spreadRadius: 5,
      //                 offset: Offset(0, 5)
      //             )
      //           ],
      //         ),
      //         child: Text("This is a GestureDetector",style: TextStyle(color: Colors.blue,fontSize: 25),),
      //       ),
      //     ),
        ],
       ),
    );
  }
}

