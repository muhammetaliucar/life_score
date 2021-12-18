import 'package:ag_trial_7/constants.dart';
import 'package:ag_trial_7/mycontainer.dart';
import "package:flutter/material.dart";
import "info.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import "calculate.dart";

class InputPage extends StatelessWidget {
  final info _info;
  InputPage(this._info);
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(centerTitle: true, title: Text("RESULT PAGE")),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: MyContainer(
                      child: Center(
                        child: Text(
                          "GENDER:",
                          style: kMetin,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: MyContainer(
                      child: _info.cinsiyet == "WOMAN"
                          ? Icon(FontAwesomeIcons.venus, size: 40,color: Colors.lightBlue[200],)
                          : Icon(FontAwesomeIcons.mars, size: 40,color:Colors.lightBlue[200]),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: MyContainer(
                      child: Center(
                        child: Text(
                          "YOUR HEIGHT:",
                          style: kMetin,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: MyContainer(
                      child: Center(
                        child: Text(
                          _info.boy.toString(),
                          style: kSayi,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: MyContainer(
                      child: Center(
                        child: Text(
                          "YOUR WEIGHT:",
                          style: kMetin,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: MyContainer(child: Center(
                        child: Text(
                          _info.kilo.toString(),
                          style: kSayi,
                        ),
                      ),),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: MyContainer(
                      child: Center(
                        child: Text(
                          "SPORTS DAY:",
                          style: kMetin,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: MyContainer(child: Center(
                        child: Text(
                          _info.sporGunu.toString(),
                          style: kSayi,
                        ),
                      ),),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: MyContainer(
                      child: Center(
                        child: Text(
                          "CIGARETTE:",
                          style: kMetin,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: MyContainer(child: Center(
                        child: Text(
                          (_info.icilenSigara).toString(),
                          style: kSayi,
                        ),
                      ),),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: MyContainer(
                      child: Center(
                        child: Text(
                          "SCORE:",
                          style: kMetin,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: MyContainer(child: Center(child: Text(Calculate(_info).clc().toString(),style:kSayi,)),),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
