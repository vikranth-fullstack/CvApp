import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:my_cv_app/constants.dart';
//import 'package:flutter/widgets.dart';

class MyCVPage extends StatelessWidget {
  const MyCVPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            CircleAvatar(
              radius: 90,
              //todo add image for image
              foregroundImage: AssetImage("assets/flower.jpeg"),
            ),
            Text("Vikranth Reddy", style: cvRegularStyle),
            SizedBox(height: 8),
            Text("Fullstack Developer", style: cvTitleStyle),
            Padding(
              padding:EdgeInsets.symmetric(horizontal: 25),
              child: Card(
                margin: EdgeInsets.all(8),
                child: ListTile(
                  leading: Icon(Icons.call,color: Colors.blueGrey,size: 40,),
                  title: Center(child: Text("+91-9700636433",style: cvCardStyle)),
                  
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Card(
                child: ListTile(
                  leading: Icon(Icons.email,color: Colors.blueGrey,size: 40,),
                  title: Center(
                    child: Text("ch.vikranth521@gmail.com",
                    style: cvCardStyle)
                    ),
                  trailing: SizedBox(),
                ),
              ),
            ),
            
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    //flex: 2,
                    child: Column(
                      children: [
                        Text("Education", textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                        SizedBox(height: 3),
                        Text("B.Tech, CSE", textAlign: TextAlign.center),
                        Text("JNTU,Hyd", textAlign: TextAlign.center)
                      ],
                    ),
                  ),
                  Expanded(
                    //flex: 6,
                    child: Column(
                      children: [
                        Text("Work experience", textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                        SizedBox(height: 3),
                        Text("FullStack Developer", textAlign: TextAlign.center),
                        Text(".Net  Developer", textAlign: TextAlign.center)
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
