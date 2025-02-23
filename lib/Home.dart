import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _count = 0;

  incrementCountrt(){
    setState(() {
      _count++; // _count = _count+1
    });


    print(_count);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text("Simple To do list",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Enter your task",
                border: OutlineInputBorder(),
                suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.add)),

              ),
            ),
            SizedBox(height: 20,),

            Expanded(
              child: ListView.builder(
                itemCount: 10,
                  itemBuilder:(context,index){
                  return Card(
                    child: ListTile(
                      title: Text("I have to do this at 8.00 am"),
                      trailing: IconButton(onPressed: (){}, icon: Icon(Icons.delete,color: Colors.red,)),
                    ),
                  );
                  }),
            )
          ],
        ),
      ),
    );
  }
}