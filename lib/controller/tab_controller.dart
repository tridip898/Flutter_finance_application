import 'package:get/get.dart';
class MyController extends GetxController{
  int selectedIndex=2;
  void changeIndex(int index){
    selectedIndex=index;
    update();
  }
}