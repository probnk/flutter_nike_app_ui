import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Adds extends StatefulWidget {
  const Adds({super.key});

  @override
  State<Adds> createState() => _AddsState();
}

class _AddsState extends State<Adds> {
  int selecteIndex = 0;
  List text = ["Basketball","Running","Training"];

  _body(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: ListView(
        children: [
          _appbar(),
          SizedBox(height: 20.h),
          _buttonList(context),
          SizedBox(height: 30.h,),
          _shoesCard(context)
        ],
      ),
    );
  }

  _appbar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.abc,size: 40.w.h,color: Colors.grey,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.menu,size: 40.w.h,color: Colors.grey,),
            SizedBox(width: 20.w),
            Icon(Icons.shopping_bag_outlined,size: 40.w.h,color: Colors.grey,),
          ],
        )
      ],
    );
  }

  _buttonList(BuildContext context) {
    return Container(
        height: 50.h,
        width: MediaQuery.of(context).size.width.w,
        child:ListView.builder(
            itemCount: text.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index){
          return TextButton(
              onPressed: () {
                  setState(() {
                    selecteIndex = index;
                  });
              },
              child: Text("${text[index]}",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.sp,
                color: selecteIndex == index ? Colors.orangeAccent : Colors.grey,
              ),)
          );
        })
    );
  }

  _shoesCard(BuildContext context){
    return Container(
      width: 200.w,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30)
      ),
      child: Card(
        margin: EdgeInsets.only(left: 15,top: 15),
        elevation: 0,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
        ),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      "Nike Dunk",
                      style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    "Nike Dunk High Women's \nShoes",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    "Nike Dunk",
                    style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 120.sp,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 230),
                    width: 100.w,
                    height: 100.h,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomRight: Radius.circular(30)
                        )
                    ),
                    child: Icon(Icons.add,size: 60.w.h,),
                  )
                ],
              ),
              Positioned(
                  left: 70,
                  top: 30,
                  child: Image.asset("assets/images/nike2.png",width: 300.w,height: 300.h,)
              ),
            ],
          ),
      ),
    );
  }

  _bottomnavbar() {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.orangeAccent,
        borderRadius: BorderRadius.circular(30)
      ),
      child: BottomNavigationBar(
          currentIndex: 1,
          elevation: 0,
          selectedItemColor: Colors.black,
          iconSize: 40.w.h,
          backgroundColor: Colors.orangeAccent,
          items: [
            BottomNavigationBarItem(
                label:"",
                icon: Icon(Icons.home_outlined)
            ),
            BottomNavigationBarItem(
                label:"",
                icon: Icon(Icons.center_focus_strong_outlined)
            ),
            BottomNavigationBarItem(
                label:"",
                icon: Icon(Icons.person)
            )
          ]
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: _bottomnavbar(),
        backgroundColor: Colors.black,
        body: _body(context)
    );
  }
}