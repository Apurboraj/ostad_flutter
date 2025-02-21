import 'package:flutter/material.dart';
void main(){
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.red,
          appBarTheme: AppBarTheme(
            color: Colors.red,
            centerTitle: true
          ),
        scaffoldBackgroundColor: Colors.white,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurpleAccent,
            foregroundColor: Colors.white,
          )
        )
      ),
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
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(

        title: Text("Ostad Fluter app",style: TextStyle(
          fontSize: 25,
          color: Colors.white,
        ),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Form(
            key: _formKey,
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Email",
                    label: Text("Email"),
                  ),
                  validator: (value){
                    if(value == null || value.isEmpty || value.length<6){
                      return "Password must be at lest 6 ct long";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20,),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Password",
                    label: Text("Password"),
                  ),
                  validator: (value){
                    if(value == null || value.isEmpty || value.length<6){
                      return "Password must be at lest 6 ct long";
                    }
                    return null;
                  },
                ),

                SizedBox(height: 20,),
                SizedBox(
                  width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                        onPressed: (){
                        if(_formKey.currentState!.validate()){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context)=>userInfo()));

                          // Navigator.pushReplacement(
                          //     context,
                          //     MaterialPageRoute(builder: (context)=>userInfo()));
                        }
                        }, child: Text(
                      "Submit",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ))),

                SizedBox(
                  height: 300,
                  child: GridView.builder(
                      gridDelegate:
                      SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                      itemCount: 7,
                      itemBuilder: (context, index){
                        return Container(

                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10)
                          ),

                          child: Center(
                              child: Icon(Icons.mobile_friendly,size: 45,color: Colors.white,)),
                        );
                      }),
                ),
              ],
            ),
          ))
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(onPressed: (){
        print("Floating acction button pressed");
      },label: Text("Add new"),),
    );
    }
}

class userInfo extends StatelessWidget{
  const userInfo({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("User page 1",style: TextStyle(
          fontSize: 25,
          color: Colors.white,
        ),),

      ),
      body:
      Column(
        children: [
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("Back")),
          ElevatedButton(onPressed: (){
            Navigator.push(
                context,
              MaterialPageRoute(
                  builder: (context) => Page1()));
          }, child: Text("Page1")),
        ],
        //Text("This is user pahe",style: TextStyle(fontSize: 26,color: Colors.amber),),
      ),
    );
  }
}

class Page1 extends StatelessWidget{
  const Page1({super.key});

  @override
Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("This is page 1",style: TextStyle(
          fontSize: 25,
          color: Colors.white,
        ),),

      ),
      body:
      Column(
        children: [
          ElevatedButton(onPressed: (){
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => Home()));
            //Navigator.pop(context);
          }, child: Text("Back to homepage")),

        ],
        //Text("This is user pahe",style: TextStyle(fontSize: 26,color: Colors.amber),),
      ),
    );
}
}