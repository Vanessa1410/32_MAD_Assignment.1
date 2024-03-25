import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'ind.dart';


class IntroSlider extends StatelessWidget {
  IntroSlider({super.key});

  PageController controller= PageController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children:[ PageView(
                  controller: controller,
                  children: [
                    EachPage('assets/handshake.jpeg', 'Welcome!'),
                    EachPage('assets/camera.jpeg', 'Capture Pictures'),
                    EachPage('assets/location.jpeg', 'Select Location'),
                    EachPage('assets/getstart.jpeg', 'Get Started!'),

                  ],
                ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Ind(controller,4),
                Row(
                  children: [
                    Expanded(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(onPressed: (){}, child: Text('Signup')),
                    )),
                    Expanded(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(onPressed: (){}, child: Text('Login')),
                    )),

                  ],
                ),
              ],
            )
          )
        ]
      ),
    );
  }
}

class EachPage extends StatelessWidget {
  String imagePath;
  String tagLine;

  EachPage(this.imagePath,this.tagLine,{super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(imagePath, width: 200, height: 200,),
        Text(tagLine, style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
      ],
    );
  }
}

