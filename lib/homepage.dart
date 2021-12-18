import 'package:ag_trial_7/constants.dart';
import 'package:ag_trial_7/inputPage.dart';
import 'package:flutter/material.dart';
import "mycontainer.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icons.dart';
import 'constants.dart';
import 'inputPage.dart';
import "info.dart";

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? selectedGender;
  double numberOfSmoke = 0.0;
  double numberOfSportsDay = 0.0;
  int height = 160;
  int weight = 60;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: MyContainer(
                  child: icons1("HEIGHT"),
                ),
              ),
              Expanded(
                child: MyContainer(
                  child: icons1("WEIGHT"),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: MyContainer(
            child: Column(
              children: [
                Text(
                  "How many days a week do you exercise? ",
                  style: kMetin,
                ),
                Text(
                  numberOfSportsDay.round().toString(),
                  style: kSayi,
                ),
                Slider(
                  value: numberOfSportsDay,
                  min: 0,
                  max: 7,
                  onChanged: (double value) {
                    setState(() {
                      numberOfSportsDay = value;
                    });
                  },
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: MyContainer(
            child: Column(
              children: [
                Text(
                  "How many cigarettes do you smoke per day? ",
                  style: kMetin,
                ),
                Text(
                  numberOfSmoke.round().toString(),
                  style: kSayi,
                ),
                Slider(
                  value: numberOfSmoke,
                  min: 0,
                  max: 30,
                  onChanged: (double value) {
                    setState(() {
                      numberOfSmoke = value;
                    });
                  },
                )
              ],
            ),
          ),
        ),
        Expanded(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: MyContainer(
                onPress: () {
                  setState(() {
                    selectedGender = "WOMAN";
                  });
                },
                renk: selectedGender == "WOMAN"
                    ? Colors.lightBlue[200]
                    : Colors.white,
                child: icons(
                  iconGender: FontAwesomeIcons.venus,
                  gender: "WOMAN",
                ),
              ),
            ),
            Expanded(
              child: MyContainer(
                onPress: () {
                  setState(() {
                    selectedGender = "MAN";
                  });
                },
                renk: selectedGender == "MAN"
                    ? Colors.lightBlue[200]
                    : Colors.white,
                child: icons(
                  gender: "MAN",
                  iconGender: FontAwesomeIcons.mars,
                ),
              ),
            ),
          ],
        )),
        ButtonTheme(
          height: 50,
          child: FlatButton(
            color: Colors.white,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => InputPage(
                    info(
                        boy: height.round(),
                        kilo: weight,
                        icilenSigara: numberOfSmoke.round(),
                        sporGunu: numberOfSportsDay.round(),
                        cinsiyet: selectedGender),
                  ),
                ),
              );
              
            },
            child: Text("CALCULATE"),
          ),
        )
      ],
    );
  }

  Row icons1(String label) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        RotatedBox(
          quarterTurns: 3,
          child: Text(
            label.toString(),
            style: kMetin,
          ),
        ),
        RotatedBox(
          quarterTurns: 3,
          child: Text(
            label == "HEIGHT" ? height.toString() : weight.toString(),
            style: kSayi,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonTheme(
                minWidth: 36,
                child: OutlinedButton(
                    onPressed: () {
                      setState(() {
                        label == "HEIGHT" ? height++ : weight++;
                      });
                    },
                    child: Icon(
                      FontAwesomeIcons.plus,
                      size: 10,
                    ))),
            ButtonTheme(
                minWidth: 36,
                child: OutlinedButton(
                    onPressed: () {
                      setState(() {
                        label == "HEIGHT" ? height-- : weight--;
                      });
                    },
                    child: Icon(
                      FontAwesomeIcons.minus,
                      size: 10,
                    ))),
          ],
        )
      ],
    );
  }
}
