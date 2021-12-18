import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  Widget? child;
  Function()? onPress;
  Color? renk;
  
  MyContainer({this.child,this.onPress,this.renk=Colors.white});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: child,
        margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color:renk,
        ),
      ),
    );
  }
}