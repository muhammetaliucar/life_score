import 'package:ag_trial_7/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class icons extends StatelessWidget {
  final String? gender;
  final IconData? iconGender;

  icons({this.gender,this.iconGender});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconGender,
          color:Colors.black54,
          size:60,
        ),
        SizedBox(height: 10,),
        Text(gender.toString(),style:kMetin),
      ],
    );
  }
}
