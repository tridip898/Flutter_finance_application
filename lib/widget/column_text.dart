import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class ColumnText extends StatelessWidget {
  final String money;
  final String text;
  const ColumnText({Key? key, required this.money, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("\$${money}",style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.w500,color: Colors.deepPurple),),
        SizedBox(height: 5,),
        Text(text,style: TextStyle(fontSize: 13.sp,color: Colors.black),)
      ],
    );
  }
}
