import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:custom_clippers/custom_clippers.dart';
import 'package:tmp_path/tmp_path.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class HoverAnimation extends StatefulWidget {
  @override
  State<HoverAnimation> createState() => _HoverAnimationState();
}

class _HoverAnimationState extends State<HoverAnimation> {
  Color? color;
  BorderRadius? boder;
  double? height;
  double? width;
  bool? animate;
  bool? textAppear;

  void changer(bool a){
    setState(() {
      if(a){
        height = 850.0;
        width = 500;
        color= Colors.white;
       boder= BorderRadius.circular(40);
       Future.delayed(Duration(milliseconds: 300),(){
         setState(() {
           textAppear=true;
         });
       });
      }
      else{
        height=470;
        width=370;
        color= Colors.white;
        boder=BorderRadius.circular(300);
      }
    });
  }
  @override
  void initState(){
    super.initState();
    animate=false;
    textAppear=false;
    changer(animate!);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [

            MouseRegion(
              onEnter: (a){
                setState(() {
                  animate = true;
                  changer(animate!);
                });
              },
              onExit: (a){
                setState(() {
                  animate=false;
                  changer(animate!);
                  textAppear=false;
                });
              },
              child: Stack(
                children: [
                  Align(
                    alignment: const Alignment(0, 0),
                    child: AnimatedContainer(
                      height: height!,
                      width: width!,
                      padding: const EdgeInsets.symmetric(vertical: 60,horizontal: 40),
                      decoration: BoxDecoration(
                        borderRadius: boder!,
                        color: color!,
                      ),
                      duration: const Duration(milliseconds: 275),
                      child: AnimatedOpacity(
                        opacity: textAppear! ? 1:0,
                        duration: Duration(milliseconds: 400),
                        curve: Curves.easeOut,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Flutter Developer",
                              style: GoogleFonts.montserrat(
                                fontSize: 35,
                                fontWeight: FontWeight.w500,
                                color: Colors.blue,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 10),
                              width: 310,
                              child: Text("Being a flutter developer is not an easy tsk. From being able to manage different app state, "
                                  "to fixing null errors. It all takes a lot of patience and perseverance to code that dream app. "
                                  "Backlash Flutter helps you implement the best design to your app. Subscribe now",
                                style: GoogleFonts.montserrat(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment(0, 0.1),
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 270),
                      padding: EdgeInsets.only(left: animate! ? 100:50),
                      child: Image.asset("myimages/about-left-image.png",fit: BoxFit.fitWidth,
                      scale: 1.5,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
    );
  }
}

class Triangleclip extends CustomClipper<Path>{
  @override
  getClip(Size size) {
    Path tr = Path();
    tr.lineTo(size.width/2-10, 0);
    tr.lineTo(size.width/2, 10);
    tr.lineTo(size.width/2+10, 0);
    tr.lineTo(size.width, 0);
    tr.lineTo(size.width, size.height);
    tr.lineTo(0, size.height);
    tr.close();
    return tr;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }
}
