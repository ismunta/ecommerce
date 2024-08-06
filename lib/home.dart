import 'package:custom_clippers/custom_clippers.dart';
import 'package:e_commerce/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shape_of_view_null_safe/shape_of_view_null_safe.dart';
import 'customclipper.dart';
import 'package:text_area/text_area.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  Color? color;
  BorderRadius? boder;
  double? height;
  double? width;
  bool? animate;
  bool? textAppear;

  void changer(bool a){
    setState(() {
      if(a){
        height=150;
        width=300;
        color=Colors.white;
        boder=BorderRadius.circular(20);
        Future.delayed(const Duration(milliseconds: 470),(){
          setState(() {
            textAppear=true;
          });
        }
        );
      }else{
        height=20;
        width=20;
        color=Colors.white;
        boder=BorderRadius.circular(20);
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
      appBar: AppBar(
        titleSpacing: 40,
        title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Row(
                children: [
                  Text("SPAC",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 22),),
                  Text("DYNA",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 22),),
                ],
              ),
              //SizedBox(width: 200,),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    child: const Text("Home",style: TextStyle(fontSize: 18),),
                    onTap: (){},
                  ),
                  SizedBox(width: 20,),
                  const Text("About Us",style: TextStyle(fontSize: 18)),
                  SizedBox(width: 20,),
                  const Text("Services",style: TextStyle(fontSize: 18)),
                  SizedBox(width: 20,),
                  const Text("Portfolio",style: TextStyle(fontSize: 18)),
                  SizedBox(width: 20,),
                  const Text("Blog",style: TextStyle(fontSize: 18)),
                  SizedBox(width: 20,),
                  const Text("Message Us",style: TextStyle(fontSize: 18)),
                  SizedBox(width: 20,),
                  OutlinedButton(style: OutlinedButton.styleFrom(backgroundColor: Colors.red),
                    onPressed: (){},
                    child: const Text("Contact Now",style: TextStyle(color: Colors.white),),
                  )
                ],
              )
            ]
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.only(top: 28.0),
            child: Column(
              children: [
                // Container(
                //   color: Colors.white,
                //   height: 100,
                //       child:
                //       Row(
                //         mainAxisAlignment: MainAxisAlignment.spaceAround,
                //         children: [
                //           const Row(
                //               children: [
                //                 Text("SPAC",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 22),),
                //                 Text("DYNA",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 22),),
                //               ],
                //             ),
                //           //SizedBox(width: 200,),
                //           Row(
                //            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //             children: [
                //               InkWell(
                //                   child: const Text("Home",style: TextStyle(fontSize: 18),),
                //                      onTap: (){},
                //               ),
                //               SizedBox(width: 20,),
                //               const Text("About Us",style: TextStyle(fontSize: 18)),
                //               SizedBox(width: 20,),
                //               const Text("Services",style: TextStyle(fontSize: 18)),
                //               SizedBox(width: 20,),
                //               const Text("Portfolio",style: TextStyle(fontSize: 18)),
                //               SizedBox(width: 20,),
                //               const Text("Blog",style: TextStyle(fontSize: 18)),
                //               SizedBox(width: 20,),
                //               const Text("Message Us",style: TextStyle(fontSize: 18)),
                //               SizedBox(width: 20,),
                //               OutlinedButton(style: ButtonStyle(backgroundColor: WidgetStateColor.transparent),
                //                 onPressed: (){},
                //                 child: const Text("Contact Now"),
                //               )
                //             ],
                //           )
                //         ]
                //   ),
                // ),
                Container(
                  //color: Colors.yellow,
                  height: 700,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        //color: Colors.blue,
                        width: 1300,
                        child:  Row(
                          children: [
                            const Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("WELCOME TO SPACE DYNAMIC",style: TextStyle(color: Colors.red),),
                                  Row(
                                    children: [
                                      Text("We Make ",style: TextStyle(color: Colors.black,fontSize: 42,fontWeight: FontWeight.bold),),
                                      Text("Digital Ideas",style: TextStyle(color: Colors.blue,fontSize: 42,fontWeight: FontWeight.bold),),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("& ",style: TextStyle(color: Colors.black,fontSize: 42,fontWeight: FontWeight.bold),),
                                      Text("SEO ",style: TextStyle(color: Colors.red,fontSize: 42,fontWeight: FontWeight.bold),),
                                      Text("Marketing",style: TextStyle(color: Colors.black,fontSize: 42,fontWeight: FontWeight.bold),),
                                    ],
                                  ),
                                  Text("Space Dynamic is a professional looking HTML template using a Bootstrap5 \n(beta 2). This CSS template is free for you provided by TemplateMo.",
                                    style: TextStyle(color: Colors.black,fontSize: 18),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width:50),
                            Expanded(
                              child: Image.asset("myimages/banner-right-image.png",
                                width: 600,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Stack(
                  children:[
                    ClipPath(
                      clipper: PrimaryClipper(),
                      child: Container(
                        color: Colors.redAccent,
                        height: 500,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 148.0),
                      child: Opacity(
                        opacity: 0.5,
                        child: ClipPath(
                          clipper: sprimary(),
                          child: Container(
                            color: Colors.redAccent,
                            height: 600,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 148.0),
                      child: ClipPath(
                        clipper: sprimary(),
                        child: Container(
                          color: Colors.redAccent,
                          height: 565,
                          //child:

                        ),
                      ),
                    ),
                    //Padding(
                      //padding: const EdgeInsets.only(top: 178.0,left: 60),
                      //child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 178.0,left: 100),
                            child: Image.asset("myimages/about-left-image.png",alignment: Alignment.bottomLeft,scale: 0.9,),
                          ),
                          const SizedBox(width: 100,),
                          Flexible(
                            child: Column(
                              //mainAxisAlignment: MainAxisAlignment.center,v
                              children: [
                                //Flexible(
                                //child:
                                ListTile(
                                  leading: Image.asset("myimages/service-icon-01.png"),
                                  title: Text("Data Analysis",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
                                  subtitle: Text("Lorem ipsum dolor sit amet, ctetur aoi adipiscing eliter",style: TextStyle(color: Colors.white,fontSize: 18),),
                                ),
                                const SizedBox(height: 35,),
                                //),
                                //Flexible(
                                //child:
                                ListTile(
                                  leading: Image.asset("myimages/service-icon-01.png"),
                                  title: Text("Web Analysis",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
                                  subtitle: Text("Lorem ipsum dolor sit amet, ctetur aoi adipiscing eliter",style: TextStyle(color: Colors.white,fontSize: 18),),
                                ),
                                // )

                              ],
                            ),
                          ),
                          Flexible(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                //Flexible(
                                //child:
                                ListTile(
                                  leading: Image.asset("myimages/service-icon-01.png"),
                                  title: Text("Data Reporting",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
                                  subtitle: Text("Lorem ipsum dolor sit amet, ctetur aoi adipiscing eliter",style: TextStyle(color: Colors.white,fontSize: 18),),
                                ),
                                const SizedBox(height: 35,),
                                //),
                                //Flexible(
                                //child:
                                ListTile(
                                  leading: Image.asset("myimages/service-icon-01.png"),
                                  title: const Text("SEO Sugestions",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
                                  subtitle: const Text("Lorem ipsum dolor sit amet, ctetur aoi adipiscing eliter",style: TextStyle(color: Colors.white,fontSize: 18),),
                                ),
                                // )

                              ],
                            ),
                          ),
                        ],
                      ),
                    //),
                  ],
                ),
                SingleChildScrollView(
                  child: Container(
                    height: 700,
                    // color: Colors.blue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("myimages/services-left-image.png"),
                        SizedBox(width: 100,),
                        Padding(
                          padding: const EdgeInsets.only(top: 110.0),
                          child: Flexible(
                            child:  Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Row(
                                  children: [
                                    Text("Grow your website with our ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 48),),
                                    Text("SEO",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 48),),
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Text("service & ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 32),),
                                    Text("Project ",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 32),),
                                    Text("Ideas ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 32),),
                                  ],
                                ),
                                const SizedBox(height: 30,),
                                const Text("Space Dynamic HTML5 template is free to use for your website projects. However, you \n are not "
                                    "permitted to redistribute the "
                                    "template ZIP file on any CSS template collection \n websites. Please contact us for more information."
                                    " Thank you for your kind \n cooperation. ",
                                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18,),),
                                const SizedBox(height: 40,),
                                Container(
                                  width: 720,
                                  child: Column(
                                    children: [
                                      const Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment
                                            .spaceBetween,
                                        children: [
                                          Text(
                                            "Website Analysis",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18),
                                          ),
                                          Text(
                                            "84%",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 22),
                                          ),
                                        ],
                                      ),
                                      LinearProgressIndicator(
                                        borderRadius: BorderRadius.circular(5),
                                        value: 0.84,
                                        // 95% progress
                                        //backgroundColor: Colors.grey[300],
                                        valueColor:
                                        const AlwaysStoppedAnimation<
                                            Color>(Colors.red),
                                        minHeight:
                                        6.0,//
                                        // Minimum height of the line
                                      ),
                                      const SizedBox(height: 30,),
                                      const Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment
                                            .spaceBetween,
                                        children: [
                                          Text(
                                            "SEO Reports",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18),
                                          ),
                                          Text(
                                            "88%",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 22),
                                          ),
                                        ],
                                      ),
                                      LinearProgressIndicator(
                                        borderRadius: BorderRadius.circular(5),
                                        value: 0.88,
                                        // 95% progress
                                        //backgroundColor: Colors.grey[300],
                                        valueColor:
                                        const AlwaysStoppedAnimation<
                                            Color>(Colors.red),
                                        minHeight:
                                        6.0,//
                                        // Minimum height of the line
                                      ),
                                      const SizedBox(height: 30,),
                                      const Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment
                                            .spaceBetween,
                                        children: [
                                          Text(
                                            "Page Optimizations",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18),
                                          ),
                                          Text(
                                            "94%",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 22),
                                          ),
                                        ],
                                      ),
                                      LinearProgressIndicator(
                                        borderRadius: BorderRadius.circular(5),
                                        value: 0.94,
                                        // 95% progress
                                        //backgroundColor: Colors.grey[300],
                                        valueColor:
                                        AlwaysStoppedAnimation<
                                            Color>(Colors.red),
                                        minHeight:
                                        6.0,//
                                        // Minimum height of the line
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
                Container(
                  height: 600,
                  color: Colors.white,
                  child:  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("See What Our Agency ",style: TextStyle(fontSize: 34,color: Colors.black,fontWeight: FontWeight.bold),),
                            Text("Offers",style: TextStyle(fontSize: 34,color: Colors.blue,fontWeight: FontWeight.bold),),
                          ],
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("& What We ",style: TextStyle(fontSize: 34,color: Colors.black,fontWeight: FontWeight.bold),),
                            Text("Provide",style: TextStyle(fontSize: 34,color: Colors.red,fontWeight: FontWeight.bold),),
                          ],
                        ),
                        SizedBox(height: 50,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                                MouseRegion(
                                  onEnter:
                                      (a){
                                    animate=true;
                                    changer(animate!);
                                  },
                                  onExit: (a){
                                    animate=false;
                                    changer(animate!);
                                    textAppear=false;
                                  },
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Stack(
                                        children: [
                                          Column(
                                            mainAxisAlignment:MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                alignment: Alignment(0, 0),
                                                child: AnimatedContainer(
                                                  height: height!,
                                                  width: width!,
                                                  decoration: BoxDecoration(borderRadius: boder!,
                                                    //color: Colors.green,
                                                  ),
                                                  duration: Duration(milliseconds: 400),
                                                  //padding: EdgeInsets.symmetric(horizontal: 40,vertical: 60),
                                                  child: AnimatedOpacity(
                                                    opacity: textAppear!? 1:0,
                                                    duration: Duration(milliseconds: 400),
                                                    curve: Curves.easeOut,
                                                      child: ShapeOfView(
                                                        shape: BubbleShape(
                                                            position: BubblePosition.Bottom,
                                                            arrowPositionPercent: 0.5,
                                                            borderRadius: 43,
                                                            arrowHeight: 10,
                                                            arrowWidth: 10
                                                        ),
                                                        child: Container(
                                                          decoration: BoxDecoration(
                                                            borderRadius: boder!,
                                                            color: Colors.red,
                                                          ),
                                                          child: Column(
                                                            children: [
                                                              Padding(
                                                                padding: const EdgeInsets.all(20.0),
                                                                child: Text(
                                                                    "SEO Analysis",
                                                                  style: GoogleFonts.montserrat(
                                                                    fontWeight: FontWeight.bold,
                                                                    fontSize: 22,
                                                                    color: color!
                                                                  ),
                                                                ),
                                                              ),
                                                              Text(
                                                                "Lorem ipsum dolor sit amsecteturii and sed doer ket eismod sed doer ket eismod",
                                                                style: GoogleFonts.montserrat(
                                                                    fontWeight: FontWeight.bold,
                                                                    fontSize: 12,
                                                                    color: color!,
                                                                ),
                                                                textAlign: TextAlign.center,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      )



                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 10,),
                                              Material(
                                                elevation: 5,
                                                borderRadius: boder,
                                                child: Align(
                                                  alignment: Alignment(0, 0.1),
                                                  child: AnimatedContainer(
                                                    duration: Duration(milliseconds: 270),
                                                    //padding: EdgeInsets.only(left: animate! ? 100:50),
                                                    decoration: BoxDecoration(borderRadius:boder,
                                                      color: color!,
                                                    ),
                                                    height: 200,
                                                    width: 300,
                                                    child: Image.asset(
                                                        "myimages/about-left-image.png",
                                                      scale: 3,
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),

                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width:20),
                                MouseRegion(
                                  onEnter:
                                      (a){
                                    animate=true;
                                    changer(animate!);
                                  },
                                  onExit: (a){
                                    animate=false;
                                    changer(animate!);
                                    textAppear=false;
                                  },
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Stack(
                                        children: [
                                          Column(
                                            mainAxisAlignment:MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                alignment: Alignment(0, 0),
                                                child: AnimatedContainer(
                                                  height: height!,
                                                  width: width!,
                                                  decoration: BoxDecoration(borderRadius: boder!,
                                                    //color: Colors.green,
                                                  ),
                                                  duration: Duration(milliseconds: 400),
                                                  //padding: EdgeInsets.symmetric(horizontal: 40,vertical: 60),
                                                  child: AnimatedOpacity(
                                                    opacity: textAppear!? 1:0,
                                                    duration: Duration(milliseconds: 400),
                                                    curve: Curves.easeOut,
                                                      child: ShapeOfView(
                                                        shape: BubbleShape(
                                                            position: BubblePosition.Bottom,
                                                            arrowPositionPercent: 0.5,
                                                            borderRadius: 43,
                                                            arrowHeight: 10,
                                                            arrowWidth: 10
                                                        ),
                                                        child: Container(
                                                          decoration: BoxDecoration(
                                                            borderRadius: boder!,
                                                            color: Colors.red,
                                                          ),
                                                          child: Column(
                                                            children: [
                                                              Padding(
                                                                padding: const EdgeInsets.all(20.0),
                                                                child: Text(
                                                                    "SEO Analysis",
                                                                  style: GoogleFonts.montserrat(
                                                                    fontWeight: FontWeight.bold,
                                                                    fontSize: 22,
                                                                    color: color!
                                                                  ),
                                                                ),
                                                              ),
                                                              Text(
                                                                "Lorem ipsum dolor sit amsecteturii and sed doer ket eismod sed doer ket eismod",
                                                                style: GoogleFonts.montserrat(
                                                                    fontWeight: FontWeight.bold,
                                                                    fontSize: 12,
                                                                    color: color!,
                                                                ),
                                                                textAlign: TextAlign.center,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      )



                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 10,),
                                              Material(
                                                elevation: 5,
                                                borderRadius: boder,
                                                child: Align(
                                                  alignment: Alignment(0, 0.1),
                                                  child: AnimatedContainer(
                                                    duration: Duration(milliseconds: 270),
                                                    //padding: EdgeInsets.only(left: animate! ? 100:50),
                                                    decoration: BoxDecoration(borderRadius:boder,
                                                      color: color!,
                                                    ),
                                                    height: 200,
                                                    width: 300,
                                                    child: Image.asset(
                                                        "myimages/about-left-image.png",
                                                      scale: 3,
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),

                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                            SizedBox(width:20),
                            MouseRegion(
                              onEnter:
                                  (a){
                                animate=true;
                                changer(animate!);
                              },
                              onExit: (a){
                                animate=false;
                                changer(animate!);
                                textAppear=false;
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Column(
                                        mainAxisAlignment:MainAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment: Alignment(0, 0),
                                            child: AnimatedContainer(
                                              height: height!,
                                              width: width!,
                                              decoration: BoxDecoration(borderRadius: boder!,
                                                //color: Colors.green,
                                              ),
                                              duration: Duration(milliseconds: 400),
                                              //padding: EdgeInsets.symmetric(horizontal: 40,vertical: 60),
                                              child: AnimatedOpacity(
                                                  opacity: textAppear!? 1:0,
                                                  duration: Duration(milliseconds: 400),
                                                  curve: Curves.easeOut,
                                                  child: ShapeOfView(
                                                    shape: BubbleShape(
                                                        position: BubblePosition.Bottom,
                                                        arrowPositionPercent: 0.5,
                                                        borderRadius: 43,
                                                        arrowHeight: 10,
                                                        arrowWidth: 10
                                                    ),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius: boder!,
                                                        color: Colors.red,
                                                      ),
                                                      child: Column(
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.all(20.0),
                                                            child: Text(
                                                              "SEO Analysis",
                                                              style: GoogleFonts.montserrat(
                                                                  fontWeight: FontWeight.bold,
                                                                  fontSize: 22,
                                                                  color: color!
                                                              ),
                                                            ),
                                                          ),
                                                          Text(
                                                            "Lorem ipsum dolor sit amsecteturii and sed doer ket eismod sed doer ket eismod",
                                                            style: GoogleFonts.montserrat(
                                                              fontWeight: FontWeight.bold,
                                                              fontSize: 12,
                                                              color: color!,
                                                            ),
                                                            textAlign: TextAlign.center,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  )



                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 10,),
                                          Material(
                                            elevation: 5,
                                            borderRadius: boder,
                                            child: Align(
                                              alignment: Alignment(0, 0.1),
                                              child: AnimatedContainer(
                                                duration: Duration(milliseconds: 270),
                                                //padding: EdgeInsets.only(left: animate! ? 100:50),
                                                decoration: BoxDecoration(borderRadius:boder,
                                                  color: color!,
                                                ),
                                                height: 200,
                                                width: 300,
                                                child: Image.asset(
                                                  "myimages/about-left-image.png",
                                                  scale: 3,
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),

                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width:20),
                            MouseRegion(
                              onEnter:
                                  (a){
                                animate=true;
                                changer(animate!);
                              },
                              onExit: (a){
                                animate=false;
                                changer(animate!);
                                textAppear=false;
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Column(
                                        mainAxisAlignment:MainAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment: Alignment(0, 0),
                                            child: AnimatedContainer(
                                              height: height!,
                                              width: width!,
                                              decoration: BoxDecoration(borderRadius: boder!,
                                                //color: Colors.green,
                                              ),
                                              duration: Duration(milliseconds: 400),
                                              //padding: EdgeInsets.symmetric(horizontal: 40,vertical: 60),
                                              child: AnimatedOpacity(
                                                  opacity: textAppear!? 1:0,
                                                  duration: Duration(milliseconds: 400),
                                                  curve: Curves.easeOut,
                                                  child: ShapeOfView(
                                                    shape: BubbleShape(
                                                        position: BubblePosition.Bottom,
                                                        arrowPositionPercent: 0.5,
                                                        borderRadius: 43,
                                                        arrowHeight: 10,
                                                        arrowWidth: 10
                                                    ),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius: boder!,
                                                        color: Colors.red,
                                                      ),
                                                      child: Column(
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.all(20.0),
                                                            child: Text(
                                                              "SEO Analysis",
                                                              style: GoogleFonts.montserrat(
                                                                  fontWeight: FontWeight.bold,
                                                                  fontSize: 22,
                                                                  color: color!
                                                              ),
                                                            ),
                                                          ),
                                                          Text(
                                                            "Lorem ipsum dolor sit amsecteturii and sed doer ket eismod sed doer ket eismod",
                                                            style: GoogleFonts.montserrat(
                                                              fontWeight: FontWeight.bold,
                                                              fontSize: 12,
                                                              color: color!,
                                                            ),
                                                            textAlign: TextAlign.center,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  )



                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 10,),
                                          Material(
                                            elevation: 5,
                                            borderRadius: boder,
                                            child: Align(
                                              alignment: Alignment(0, 0.1),
                                              child: AnimatedContainer(
                                                duration: Duration(milliseconds: 270),
                                                //padding: EdgeInsets.only(left: animate! ? 100:50),
                                                decoration: BoxDecoration(borderRadius:boder,
                                                  color: color!,
                                                ),
                                                height: 200,
                                                width: 300,
                                                child: Image.asset(
                                                  "myimages/about-left-image.png",
                                                  scale: 3,
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),

                                    ],
                                  ),
                                ],
                              ),
                            ),
                           // )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                  Container(
                    color:Colors.white,
                    child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              children: [
                                Text("Check Out What Is ",
                                  style: TextStyle(color: Colors.black,
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("Trending ",
                                  style: TextStyle(color: Colors.blue,
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                            const Row(
                              children: [
                                Text("In our latest ",
                                  style: TextStyle(color: Colors.black,
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("News ",
                                  style: TextStyle(color: Colors.red,
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height:20),
                            Stack(
                              children: [
                                Image.asset("myimages/big-blog-thumb.jpg"),
                                Padding(
                                  padding: const EdgeInsets.only(top:400.0),
                                  child: Material(
                                    elevation:5,
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.white,
                                    child: Container(
                                      height: 200,
                                      width: 500,
                                      child:  Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        //mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.all(20.0),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              //mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children: [
                                                Icon(Icons.calendar_month,color: Colors.red,),
                                                SizedBox(width:10),
                                                Text("24th Mar 2021",style:TextStyle(color:Colors.black38),),
                                                SizedBox(width:10),
                                                Icon(Icons.group,color: Colors.red,),
                                                SizedBox(width:10),
                                                Text("TemplateMo",style:TextStyle(color:Colors.black38),),
                                                SizedBox(width:10),
                                                Icon(Icons.folder,color: Colors.red,),
                                                SizedBox(width:10),
                                                Text("Branding",style:TextStyle(color:Colors.black38),),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 22.0),
                                            child: Text("SEO Agency & Digital Marketing",
                                              style: GoogleFonts.montserrat(
                                                fontSize: 22,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 22.0,top: 10),
                                            child: Text("Lorem ipsum dolor sit amet, consectetur and \n sed doer ket eismod tempor incididunt \n ut labore et dolore magna...",
                                              style: GoogleFonts.montserrat(
                                                fontSize: 12,
                                                //fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height:10),
                            Container(
                              height: 50,
                              width:200,
                              child: ElevatedButton(onPressed: (){},
                                child: Text("Discover More",
                                  style:TextStyle(color:Colors.white),
                                ),
                                style: ButtonStyle(backgroundColor:MaterialStatePropertyAll<Color>(Colors.blue)),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width:50),
                        Padding(
                          padding: const EdgeInsets.only(bottom:108.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left:400.0,),
                                child: Image.asset("myimages/blog-dec.png"),
                              ),
                              Row(
                                 // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 // crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Icon(Icons.calendar_month,color: Colors.red,),
                                        SizedBox(width:10),
                                        Text("24th Mar 2021",style:TextStyle(color:Colors.black38),),
                                        Text(
                                          "New Websites & Backlinks",
                                          style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.bold,
                                            fontSize:22,
                                            color:Colors.black,

                                          ),
                                        ),
                                        Text(
                                          "Lorem ipsum dolor sit amsecteturii and \n sed doer ket eismod...",
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 90),
                                    Container(
                                      height:200,
                                      width:250,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                          color: Colors.red,
                                          width: 5.0,
                                        ),
                                      ),
                                      child: Image.asset("myimages/blog-thumb-01.jpg",fit: BoxFit.fitHeight),
                                    ),
                                  ]
                              ),
                              SizedBox(height:20),
                              Row(
                                  //mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Icon(Icons.calendar_month,color: Colors.red,),
                                        SizedBox(width:10),
                                        Text("24th Mar 2021",style:TextStyle(color:Colors.black38),),
                                        Text(
                                          "New Websites & Backlinks",
                                          style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.bold,
                                            fontSize:22,
                                            color:Colors.black,

                                          ),
                                        ),
                                        Text(
                                          "Lorem ipsum dolor sit amsecteturii and \n sed doer ket eismod...",
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 90),
                                    Container(
                                      height:200,
                                      width:250,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                          color: Colors.red,
                                          width: 5.0,
                                        ),
                                      ),
                                      child: Image.asset("myimages/blog-thumb-01.jpg",fit: BoxFit.fitHeight),
                                    ),
                                  ]
                              ),
                              SizedBox(height:20),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Icon(Icons.calendar_month,color: Colors.red,),
                                        SizedBox(width:10),
                                        Text("24th Mar 2021",style:TextStyle(color:Colors.black38),),
                                        Text(
                                          "New Websites & Backlinks",
                                          style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.bold,
                                            fontSize:22,
                                            color:Colors.black,

                                          ),
                                        ),
                                        Text(
                                          "Lorem ipsum dolor sit amsecteturii and \n sed doer ket eismod...",
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 90),
                                    Container(
                                      height:200,
                                      width:250,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                          color: Colors.red,
                                          width: 5.0,
                                        ),
                                      ),
                                        child: Image.asset("myimages/blog-thumb-01.jpg",fit: BoxFit.fitHeight),
                                    ),
                                  ]
                              ),
                            ],
                          ),
                        ),

                      ],
                     ),
                  ),
                const SizedBox(height: 20,),
                Stack(
                  children: [
                    ClipPath(
                      clipper: DirectionalWaveClipper(
                          verticalPosition: VerticalPosition.top,
                          horizontalPosition: HorizontalPosition.right),
                      child: Container(
                        height:600,
                        color: Colors.red,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:40.0),
                      child: ClipPath(
                        clipper: CustomizeClipper() ,
                        child:Container(
                          height: 800,
                          color: Colors.red,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                              Text("Feel Free To Send Us a Message About \n Your Website Needs",
                                  style:GoogleFonts.montserrat(
                                    fontSize:22,
                                    fontWeight: FontWeight.bold,
                                    color:Colors.white
                                  ),
                              ),
                              SizedBox(height: 20,),
                              Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doer ket \n eismod tempor incididunt ut labore et dolores",
                                style:GoogleFonts.montserrat(
                                    fontSize:18,
                                    color:Colors.white
                                ),
                              ),
                             SizedBox(height:20),
                             Row(
                               children:[
                                 Text("For any enquiry, Call Us: ",
                                   style:GoogleFonts.montserrat(
                                       fontSize:18,
                                       fontWeight:FontWeight.bold,
                                       color:Colors.white
                                   ),
                                 ),
                                 SizedBox(width:20),
                                 Container(
                                   height:50,
                                   width: 50,
                                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),
                                   color:Colors.white,
                                   ),
                                     child: Icon(Icons.phone,color: Colors.red,)
                                 ),
                                 SizedBox(width:20),
                                 Text("010-020-0340",style:GoogleFonts.montserrat(
                                   color:Colors.white,
                                   fontSize: 18,
                                 ))
                               ]
                             )
                            ]
                          ),
                          SizedBox(width:20),
                          Padding(
                            padding: const EdgeInsets.only(bottom:75.0),
                            child: Container(
                              width:600,
                              height:500,
                              decoration: BoxDecoration(borderRadius:BorderRadius.circular(30),
                              color: Colors.white
                              ),
                              child:Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height:50,
                                        width:250,
                                        decoration:BoxDecoration(borderRadius:BorderRadius.circular(30),
                                        color:Color(0xa8b7eff3),
                                        ),
                                          child:Padding(
                                            padding: const EdgeInsets.only(left:10.0),
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                  hintText: "Name",
                                                  border: InputBorder.none
                                              ),
                                            ),
                                          )
                                      ),
                                      SizedBox(width:20),
                                      Container(
                                        height:50,
                                        width:250,
                                        decoration:BoxDecoration(borderRadius:BorderRadius.circular(30),
                                        color:Color(0xa8b7eff3),
                                        ),
                                          child:Padding(
                                            padding: const EdgeInsets.only(left:10.0),
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                  hintText: "Surname",
                                                  border: InputBorder.none
                                              ),
                                            ),
                                          )
                                      ),
                                    ]
                                  ),
                                  SizedBox(height:20),
                                  Container(
                                      height:50,
                                      width:520,
                                      decoration:BoxDecoration(borderRadius:BorderRadius.circular(30),
                                        color:Color(0xa8b7eff3),
                                      ),
                                    child:Padding(
                                      padding: const EdgeInsets.only(left:10.0),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintText: "Your Email",
                                          border: InputBorder.none
                                        ),
                                      ),
                                    )
                                  ),
                                  SizedBox(height:20),
                                  Container(
                                      //height:300,
                                      width:520,
                                      decoration:BoxDecoration(borderRadius:BorderRadius.circular(30),
                                        color:Color(0xa8b7eff3),
                                      ),
                                      child:const Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: TextField(
                                          keyboardType: TextInputType.multiline,
                                          maxLines: 4,
                                          decoration: InputDecoration(
                                              hintText: "Enter Remarks",
                                              border: InputBorder.none,
                                          ),
                                          //textAlign: TextAlign.,
                                        ),
                                      ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left:58.0,top:18),
                                    child: Container(
                                      height:50,
                                      width:200,
                                      decoration:BoxDecoration(borderRadius: BorderRadius.circular(20),
                                        color:Colors.blue,
                                      ),
                                      child: OutlinedButton(
                                          style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.blue)),
                                          onPressed: (){},
                                          child: Text("Send Message",style:TextStyle(color:Colors.white))
                                      ),
                                    ),
                                  ),
                                ]
                              ),
                            ),
                          ),
                          Image.asset("myimages/contact-decoration.png",height: 350,)
                        ]
                      ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children:[
                      Text("© Copyright 2021 Space Dynamic Co. All Rights Reserved."),
                      Row(
                        mainAxisAlignment:MainAxisAlignment.center,
                        children: [
                          Text("Design: "),
                          Text("TemplateMo",style:TextStyle(color:Colors.red)),
                        ],
                      ),
                    ]
                  ),
                ),
              ],
            )
        ),
      ),
    );
  }
}

class sprimary extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path spp = Path();
    spp.lineTo(0, size.height-170);
    spp.cubicTo(size.width/3, 3*(size.height/5), 3*(size.width/4), size.height*0.95, size.width, size.height* 0.8);
    spp.lineTo(size.width, 0);
    return spp;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

}
class PrimaryClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path ss = Path();
    ss.moveTo(0, 50);
    ss.quadraticBezierTo(size.width/3.9, 0, size.width/3, 30);
    ss.quadraticBezierTo(size.width/1.1, size.height/3, size.width, 70);
    ss.lineTo(size.width, size.height);
    ss.lineTo(0, size.height);


    return ss;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
