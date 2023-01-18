import 'package:finance_mobile_application/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: height,
          width: width,
          color: Colors.blue.shade100.withOpacity(0.5) ,
          child: Column(
            children: [
              //logo
              Container(
                margin: EdgeInsets.only(top: 10.h),
                child: Image.asset("lib/icons/logo.png",height: 20.h,),
              ),
              //email
              Container(
                height: 10.h,
                width: 90.w,
                margin: EdgeInsets.only(top: 4.h),
                padding: EdgeInsets.only(left: 25,top: 15,bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade400.withOpacity(0.5),
                      blurRadius: 20
                    )
                  ]
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Email Address",style: TextStyle(fontSize: 16.sp,color: Colors.black54),),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Icon(Icons.email_outlined,color: Colors.black54,size: 3.5.h,),
                        SizedBox(width: 8,),
                        Text("tridip@gmail.com",style: TextStyle(color: Colors.black54,fontSize: 14.sp),)
                      ],
                    )
                  ],
                ),
              ),
              //password
              Container(
                height: 10.h,
                width: 90.w,
                margin: EdgeInsets.only(top: 3.h),
                padding: EdgeInsets.only(left: 25,top: 15,right: 20,bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade400.withOpacity(0.5),
                          blurRadius: 20
                      )
                    ]
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Password",style: TextStyle(fontSize: 16.sp,color: Colors.black54),),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Icon(Icons.lock_outline,color: Colors.black54,size: 3.5.h,),
                        SizedBox(width: 8,),
                        Text("*******",style: TextStyle(color: Colors.black54,fontSize: 14.sp),),
                        Expanded(child: Container()),
                        Icon(Icons.visibility_outlined,color: Colors.black54,size: 3.5.h,)
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 30,),
              //login button
              MaterialButton(
                  onPressed: (){
                    Get.to(()=>HomePage());
                  },
                child: Text("Login",style: TextStyle(fontSize: 16.sp,color: Colors.white),),
                color: Colors.deepPurple,
                minWidth: 86.w,
                height: 7.h,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
                ),
              ),
              //forgot password
              Container(
                alignment: Alignment(0.75, 0),
                child: TextButton(onPressed: (){}, child: Text("Forgot Password?",style: TextStyle(fontSize: 14.sp,color: Colors.grey.shade600,fontWeight: FontWeight.w400),)),
              ),
              //signup text
              RichText(text: TextSpan(
                children: [
                  TextSpan(
                    text: "Don't Have an Account?",
                    style: TextStyle(fontSize: 14.5.sp,color: Colors.black)
                  ),
                  WidgetSpan(child: InkWell(
                      onTap: (){
                        Get.to(()=>HomePage());
                      },
                      child: Text("\tSignup",style: TextStyle(fontSize: 14.5.sp,color: Colors.redAccent),)))
                ]
              ))
            ],
          ),
        ),
      ),
    );
  }
}
