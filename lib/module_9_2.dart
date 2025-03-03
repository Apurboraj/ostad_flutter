import 'package:flutter/material.dart';

class ModuleNine extends StatelessWidget {
  const ModuleNine({super.key});

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text("Module 9"),
    ),
    body: Column(
      children: [
      //   Container(
      //     color: Colors.blue,
      //     child: AspectRatio(
      //       aspectRatio: 4/3,
      //     child: Container(
      //       color: Colors.amber,
      //     ),),
      //   ),
        Center(
          child: SizedBox(
            height: 100,
            width: 250,
            child: Container(
              color: Colors.green,
            ),
          ),
        ),

        SizedBox(height: 20),

        // Container(
        //   height: 350,
        //   width: 250,
        //   color: Colors.blue,
        //   child: FractionallySizedBox(
        //     widthFactor: 0.8,
        //     heightFactor: 0.7,
        //     alignment: Alignment.topRight,
        //     child: Container(
        //     color: Colors.green,
        //       child: Center(child: Text("50% width & Height"),),
        //    ),
        //  ),
        // ),

        SizedBox(
          height: 100,
          width: 100,
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
              ),

              Expanded(
                flex: 2,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.amber,
                ),
              ),
            ],
          ),
        ),

        SizedBox(height: 10,),

        Center(
          child: Stack(
            children: [
              Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
              Positioned(
                top: 10,
                left: 10,
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
}