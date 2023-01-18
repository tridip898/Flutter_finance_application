import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListModel{
  final String title;
  final String subTitle;
  final IconData icon;
  final String money;

  ListModel(this.title, this.subTitle, this.icon, this.money);
}

List<ListModel> listModel=[
  ListModel("Sent", "Sending money to clients", Icons.arrow_upward_outlined, "150"),
  ListModel("Receive", "Receiving salary from job", Icons.arrow_downward_outlined, "250"),
  ListModel("Loan", "Loan for the car", Icons.monetization_on_outlined, "400"),
];