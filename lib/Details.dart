import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:practice10/Clipper.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {

  int? selectedIndex;
  int? indexSelected;
  List _colors = [Colors.grey,Colors.lightBlueAccent,Colors.blue.shade900,Colors.red,Colors.orangeAccent];
  List _size = [9,9.5,10,10.5,11];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(left:10.w,right: 10.w,top: 34.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.sp)
                        ),
                        child:Padding(
                          padding: EdgeInsets.all(9.sp),
                          child:  Icon(Icons.arrow_back)
                        )
                    ),
                    Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.sp)
                        ),
                        child:Padding(
                            padding: EdgeInsets.all(9.sp),
                            child:  Icon(Icons.shopping_bag_outlined)
                        )
                    )
                  ],
                ),
              ),
              Container(
                width: 180.w,
                height: 600.h,
                margin: EdgeInsets.only(left:115.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.sp),
                    bottomRight: Radius.circular(20.sp)
                  ),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.pink.shade500,Colors.blue.shade500]
                  )
                ),
                child: Column(
                  children: [
                    Image.asset("assets/images/nikeicon.png",width: 100.w,height: 100.h,),
                    SizedBox(height: 187.h,),
                    RotatedBox(
                      quarterTurns: 1,
                      child: Text(
                        'NIKE',
                        style:TextStyle(
                            fontSize: 130.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white24
                        )
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left:20.w,top: 140.h),
                child: Text(
                    "SIZE",
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                ),
              ),
              Container(
                width: 50.w,
                margin: EdgeInsets.only(left:12.w,right: 10.w,top: 100.h),
                child: ListView.builder(
                    itemCount: 5,
                    shrinkWrap: true,
                    itemBuilder: (context,index){
                      return InkWell(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.only(top:10.h),
                          height: 50.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.sp),
                              border: Border.all(color: selectedIndex == index
                                  ? Colors.transparent : Colors.pink),
                              gradient: selectedIndex == index
                                  ? LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [Colors.pink.shade500,Colors.blue.shade500]
                              )
                                  : LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [Colors.transparent,Colors.transparent]
                              )
                          ),
                          child: Center(
                            child: Text(
                                '${_size[index]}',
                                style: TextStyle(
                                  color: selectedIndex == index
                                      ? Colors.white
                                      : Colors.black,
                                  fontSize: selectedIndex == index
                                      ? 18.sp : 16.sp,
                                  fontWeight:  selectedIndex == index
                                      ? FontWeight.bold : FontWeight.w600
                                ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              Transform.rotate(
                angle: 6,
                child: Container(
                    width: 400.w,
                    height: 350.h,
                    margin: EdgeInsets.only(left: 0,top: 120),
                    child: Image.asset("assets/images/nike2.png")),
              ),
              Container(
                margin: EdgeInsets.only(top: 300.h,left: 340.w),
                child: Text(
                  "COLOR",
                  style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Container(
                width: 50.w,
                margin: EdgeInsets.only(left: 338,top: 270),
                child: ListView.builder(
                    itemCount: _colors.length,
                    shrinkWrap: true,
                    itemBuilder: (context,index){
                      return InkWell(
                        onTap: () {
                          setState(() {
                            indexSelected = index;
                          });
                        },
                        child: Container(
                          width: 50.w,
                          height: 50.h,
                          margin: EdgeInsets.all(2),
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color:Colors.grey,width: 1
                            ),
                            gradient: indexSelected == index
                                ? LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [Colors.pink.shade500,Colors.blue.shade500]
                            )
                                : LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [Colors.transparent,Colors.transparent]
                            ),
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                            color: _colors[index],
                            border: Border.all(color: Colors.white,width: 4),
                            borderRadius: BorderRadius.circular(10)
                            ),
                          )
                        ),
                      );
                }),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          Text(
            "NIKE ELECTRIC DE",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28.sp,
            ),
          ),
          SizedBox(height: 4.h,),
          Text(
            "Men's Shoes",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey,
              fontSize: 16.sp,
            ),
          ),
          SizedBox(height: 14.h,),
          Text(
            "\$ 128.68",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.pinkAccent,
              fontSize: 28.sp,
            ),
          ),
          SizedBox(height: 12.h,),
          Text(
            "Swipe Down",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade300,
              fontSize: 20.sp,
            ),
          ),
          SizedBox(height: 5,),
          Stack(
            children: [
              ClipPath(
                clipper: CustomClipperPath(),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 127.h,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.pink.shade400,
                            Colors.purple.shade400,
                            Colors.blue.shade400
                          ]
                      )
                  ),
                  child: Container(
                    margin: EdgeInsets.only(top: 8,left: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Icon(Icons.shopping_bag_outlined,size: 40.sp,),
                        ),
                        Transform.rotate(
                            angle: 270 * pi/180,
                            child: Icon(Icons.arrow_back_ios_new,size: 18.sp,color:Colors.grey)),
                        Transform.rotate(
                            angle:  270 * pi/180,
                            child: Icon(Icons.arrow_back_ios_new,size: 18.sp,color: Colors.white)),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.pinkAccent),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Icon(Icons.favorite_outline,size: 40.sp,),
                    ),
                    Container(
                      width: 60,
                      height: 60,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.pinkAccent),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Icon(Icons.more_horiz,size: 40.sp,),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}