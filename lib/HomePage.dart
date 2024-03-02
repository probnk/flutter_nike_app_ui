import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:practice10/Details.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.pink.shade500,
              Colors.blue.shade500
            ]
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: ListView(
            children: [
              Stack(
                children: [
                  RotatedBox(
                    quarterTurns: 3,
                    child: Container(
                      width: MediaQuery.of(context).size.height,
                      height: 120.h,
                      color: Colors.white10,
                        child: Text(
                                  '  B E  U N I Q U E',
                                  style: TextStyle(
                                    fontSize: 110.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white12
                          ),
                        ),
                      ),
                  ),
                  Positioned(
                    left: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       Row(
                         children: [
                           Text(
                               "\n\nMAKE",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 34.sp,
                                  fontWeight: FontWeight.bold
                                ),
                           ),
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Container(
                                 margin: EdgeInsets.only(left:10,top: 81),
                                 width: 70.w,
                                 height: 4.h,
                                 decoration: BoxDecoration(
                                   color: Colors.white12,
                                   borderRadius: BorderRadius.circular(10)
                                 ),
                               ),
                               Container(
                                 margin: EdgeInsets.only(left:10,top:4),
                                 width: 40.w,
                                 height: 4.h,
                                 decoration: BoxDecoration(
                                     color: Colors.white12,
                                     borderRadius: BorderRadius.circular(10)
                                 ),
                               ),
                               Container(
                                 margin: EdgeInsets.only(left:10,top: 4),
                                 width: 100.w,
                                 height: 4.h,
                                 decoration: BoxDecoration(
                                     color: Colors.white12,
                                     borderRadius: BorderRadius.circular(10)
                                 ),
                               ),
                               Container(
                                 margin: EdgeInsets.only(left:10,top: 4),
                                 width: 90.w,
                                 height: 4.h,
                                 decoration: BoxDecoration(
                                     color: Colors.white12,
                                     borderRadius: BorderRadius.circular(10)
                                 ),
                               ),
                             ],
                           )
                         ],
                       ),
                        SizedBox(height: 20.h,),
                        Text(
                          "YOUR STYLE",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 34.sp,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "COME ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 34.sp,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            Stack(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 20),
                                  height: 50.h,
                                  width: 90.w,
                                  padding: EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: Colors.white,width: 3)
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 27),
                                  width: 80.w,height: 80.h,
                                  child: Image.asset("assets/images/nike1.png"),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    left: 20,
                    child: Container(
                      margin: EdgeInsets.only(top: 280,left: 10),
                      width: 400.w,height: 400.h,
                      child: Transform.translate(
                          offset: Offset(0,0),
                          child: Image.asset("assets/images/nike2.png")),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(top:700,left: 100),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      Container(
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context, MaterialPageRoute(
                                  builder: (context) => Details()
                              )
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.black,
                              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
                              elevation: 8,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)
                              ),
                            ),
                            child:Text("Explore",style: TextStyle(fontWeight: FontWeight.bold),)
                        ),
                      ),
                     Row(
                       children: [
                         Container(
                           width: 8.w,
                           height: 8.h,
                           decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(4)
                           ),
                         ),
                         SizedBox(width: 4.w,),
                         Container(
                           width: 4.w,
                           height: 4.h,
                           decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(2)
                           ),
                         ),
                         SizedBox(width: 4.w,),
                         Container(
                           width: 1.w,
                           height: 1.h,
                           decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(20)
                           ),
                         ),
                         Container(
                           width: 4.w,
                           height: 30.h,
                           decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(20)
                           ),
                         ),
                         SizedBox(width: 4.w,),
                         Container(
                           width: 4.w,
                           height: 45.h,
                           decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(20)
                           ),
                         ),
                         SizedBox(width: 4.w,),
                         Container(
                           width: 4.w,
                           height: 55.h,
                           decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(20)
                           ),
                         ),
                         SizedBox(width: 4.w,),
                         Container(
                           width: 4.w,
                           height: 65.h,
                           decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(.5)
                           ),
                         ),
                         SizedBox(width: 4.w,),
                         Container(
                           width: 4.w,
                           height: 75.h,
                           decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(20)
                           ),
                         ),
                         SizedBox(width: 4.w,),
                         Container(
                           width: 4.w,
                           height: 65.h,
                           decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(20)
                           ),
                         ),
                         SizedBox(width: 4.w,),
                         Container(
                           width: 4.w,
                           height: 55.h,
                           decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(20)
                           ),
                         ),
                         SizedBox(width: 4.w,),
                         Container(
                           width: 4.w,
                           height: 45.h,
                           decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(20)
                           ),
                         ),
                         SizedBox(width: 4.w,),
                         Container(
                           width: 4.w,
                           height: 35.h,
                           decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(20)
                           ),
                         )
                       ],
                     )
                    ],),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}