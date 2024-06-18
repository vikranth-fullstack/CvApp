import 'package:flutter/material.dart';
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
            Text("Fullstack Developer", style: cvTitleStyle),
            Text("+91-9700636433", style: cvTitleStyle),
            Text("ch.vikranth521@gmail.com", style: cvTitleStyle),
          ],
        ),
      )),
    );
  }
}
