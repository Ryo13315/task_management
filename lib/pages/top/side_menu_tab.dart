import 'package:flutter/material.dart';

class SideMenuTab extends StatelessWidget {
  String menuTitle;
  Color tabColor;
  double tabWidth;
  SideMenuTab({required this.menuTitle,required this.tabColor,required this.tabWidth});
  // const SideMenuTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: tabWidth,
      padding: const EdgeInsets.symmetric(vertical: 5),
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: tabColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.white)
      ),
      child: Center(
        child: Text(menuTitle,style: const TextStyle(color: Colors.white,fontSize: 20),),
      ),
    );
  }
}
