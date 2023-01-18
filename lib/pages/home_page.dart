import 'package:finance_mobile_application/pages/recent_transaction_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sizer/sizer.dart';
import '../controller/tab_controller.dart';
import '../model/list_model.dart';
import '../widget/column_text.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  MyController controller=Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
          height: 6.5.h,
          color: Colors.blue.shade100.withOpacity(0.5),
          child: GNav(
            selectedIndex: controller.selectedIndex,
              onTabChange: controller.changeIndex,
              tabBorderRadius: 15,
              curve: Curves.easeOutExpo,
              duration: Duration(milliseconds: 600),
              color: Colors.grey[600],
              activeColor: Colors.white,
              iconSize: 4.3.h,
              tabBackgroundColor: Colors.deepPurple,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              tabs: [
                GButton(
                  icon: Icons.home_outlined,
                ),
                GButton(
                  icon: Icons.credit_card_sharp,
                ),
                GButton(
                  icon: Icons.add,
                  onPressed: (){
                    Get.to(()=>RecentTransactionPage());
                  },
                ),
                GButton(
                  icon: Icons.attach_money,
                ),
                GButton(
                  icon: Icons.person_outline_rounded,
                )
              ]
          ),
        ),
        body: Container(
          height: height,
          width: width,
          color: Colors.blue.shade100.withOpacity(0.5),
          child: Column(
            children: [
              //profile
              Container(
                height: 40.h,
                width: width,
                margin: EdgeInsets.all(2.6.h),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade400.withOpacity(0.6),
                          blurRadius: 20)
                    ]),
                padding: EdgeInsets.all(2.h),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.menu_outlined,
                          size: 3.7.h,
                        ),
                        Icon(
                          Icons.more_vert,
                          size: 3.7.h,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 1.5.h,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage("lib/images/profile.jpg"),
                      radius: 6.h,
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text(
                      "Tridip Bhowmik",
                      style: TextStyle(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w800,
                          color: Colors.deepPurple),
                    ),
                    Text(
                      "UI/UX Designer",
                      style: TextStyle(fontSize: 14.sp, color: Colors.blueGrey),
                    ),
                    SizedBox(
                      height: 3.5.h,
                    ),
                    //used intrinsicheight as parent of row for vertical divider
                    IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ColumnText(money: "8900", text: "Income",),
                          VerticalDivider(
                            thickness: 1,
                            color: Colors.grey,
                            width: 40,
                          ),
                          ColumnText(money: "5500", text: "Expenses"),
                          VerticalDivider(
                            thickness: 1,
                            color: Colors.grey,
                            width: 40,
                          ),
                          ColumnText(money: "890", text: "Loan")
                        ],
                      ),
                    )
                  ],
                ),
              ),
              //overview text
              Container(
                margin: EdgeInsets.symmetric(horizontal: height*0.02),
                child: Row(
                  children: [
                    Text(
                      "Overview",
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.deepPurple),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Icon(
                      Icons.notifications_none_outlined,
                      size: 3.5.h,
                      color: Colors.blueGrey,
                    ),
                    Expanded(child: Container()),
                    Text(
                      "Jan 17, 2023",
                      style: TextStyle(
                          fontSize: 13.sp,
                          color: Colors.deepPurple.shade800,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              //list
              Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: listModel.length,
                    itemBuilder: (_, index) {
                      return Container(
                        height: 11.h,
                        margin: EdgeInsets.only(
                            left: 15, right: 15, top: 10, bottom: 5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          children: [
                            //icon
                            Container(
                              height: 7.h,
                              width: 13.w,
                              decoration: BoxDecoration(
                                  color: Colors.blue.shade200.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Icon(
                                listModel[index].icon,
                                size: 4.h,
                              ),
                            ),
                            SizedBox(
                              width: 3.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  listModel[index].title,
                                  style: TextStyle(
                                      fontSize: 15.5.sp,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  listModel[index].subTitle,
                                  style: TextStyle(
                                      fontSize: 12.5.sp,
                                      color: Colors.grey.shade600),
                                )
                              ],
                            ),
                            Expanded(child: Container()),
                            Text(
                              "\$${listModel[index].money}",
                              style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            )
                          ],
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
