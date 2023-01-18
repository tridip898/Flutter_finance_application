import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class RecentTransactionPage extends StatefulWidget {
  RecentTransactionPage({Key? key}) : super(key: key);

  @override
  State<RecentTransactionPage> createState() => _RecentTransactionPageState();
}

class _RecentTransactionPageState extends State<RecentTransactionPage> {
  List data=["All","Income","Expense"];

  int _index=0;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: height,
          width: width,
          color: Colors.blue.shade100.withOpacity(0.5),
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //app bar
              Row(
                children: [
                  IconButton(onPressed: (){
                    Get.back();
                  } ,icon: Icon(Icons.arrow_back_ios,size: 3.5.h,)),
                  Expanded(child: Container()),
                  Icon(Icons.search_rounded,size: 4.h,)
                ],
              ),
              SizedBox(height: 2.1.h,),
              //recent text
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Recent Transactions",style: TextStyle(fontSize: 22.sp,fontWeight: FontWeight.w600,color: Colors.deepPurple),),
                  Text("See all",style: TextStyle(fontSize: 15.sp),)
                ],
              ),
              SizedBox(height: 2.1.h,),
              //category
              SizedBox(
                height: 55,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (_,index){
                  return GestureDetector(
                    onTap: (){
                        setState(() {
                          _index = index;
                        });
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 2.w),
                      decoration: BoxDecoration(
                          color: _index==index ? Colors.deepPurple : Colors.white,
                          borderRadius: BorderRadius.circular(30)
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 30,vertical: 13),
                      child: Text(data[index],style: TextStyle(fontSize: _index==index? 16.sp : 15.sp,color: _index==index ? Colors.white : Colors.black54),),
                    ),
                  );
                }),
              ),
              SizedBox(height: 1.5.h,),
              //today text
              Text("Today",style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w700,color: Colors.deepPurple),),
              SizedBox(height: 2.1.h,),
              //payment container
              Center(
                child: Container(
                  height: 12.h,
                  width: 90.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 20
                      )
                    ]
                  ),
                  padding: EdgeInsets.only(left: 20,top: 15,bottom: 15,right: 15),
                  child: Row(
                    children: [
                      Container(
                        child: Image.asset("lib/icons/email.png",height: 6.h,),
                      ),
                      SizedBox(width: 25,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Payment",style: TextStyle(fontSize: 19.sp,fontWeight: FontWeight.w600),),
                          Text("Payment from Andrea",style: TextStyle(fontSize: 13.5.sp,color: Colors.grey),)
                        ],
                      ),
                      Expanded(child: Container()),
                      Text("\$90.0",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w700,color: Colors.deepPurple),)
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Stack(
                  children: [
                    Positioned(
                      top: 1.h,
                      left: 38.w,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("lib/images/men1.jpg"),
                        radius: 3.5.h,
                      ),
                    ),
                    Positioned(
                      top: 20.h,
                      left: 2.w,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("lib/images/men2.jpg"),
                        radius: 3.5.h,
                      ),
                    ),
                    Positioned(
                      top: 20.h,
                      right: 2.w,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("lib/images/girl2.jpg"),
                        radius: 3.5.h,
                      ),
                    ),
                    Positioned(
                      bottom: 1.h,
                      left: 38.w,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("lib/images/girl3.jpg"),
                        radius: 3.5.h,
                      ),
                    ),
                    Container(
                    alignment: Alignment.center,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400,width: 1.8),
                        shape: BoxShape.circle
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.blue.shade100.withOpacity(0.1),
                        radius: 18.h,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 14.3.h,
                          child: CircleAvatar(
                            backgroundColor: Colors.blue.shade200.withOpacity(1),
                            radius: 14.h,
                            child: CircleAvatar(
                              backgroundColor: Colors.blue.shade100.withOpacity(1),
                              radius: 11.h,
                              child: CircleAvatar(
                                backgroundColor: Colors.deepPurple.shade800,
                                radius: 8.6.h,
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 8.h,
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage("lib/images/girl4.jpg"),
                                    radius: 7.h,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  ]
                ),
              ),
              MaterialButton(
                onPressed: (){},
                color: Colors.deepPurple,
                child: Text("See Details",style: TextStyle(fontSize: 17.sp,color: Colors.grey.shade100,fontWeight: FontWeight.w600),),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
                ),
                minWidth: 90.w,
                height: 7.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
