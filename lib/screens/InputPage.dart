import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:flutter_assignment_revedor_india/Resuable.dart';
import 'MainDrawer.dart';
import '../Calculator.dart';
import '../Constrants.dart';
import 'ResultPage.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender activeGender = Gender.male;
  int height = 120;
  int weight = 45;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'BMI Calculator',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.lightBlue.shade900,
          elevation: 0,
        ),
        drawer: MainDrawer(),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      colour: Colors.lightBlue.shade900,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.mars,
                              size: 80,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'MALE',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )
                          ]),
                      onPress: () {
                        setState(() {
                          activeGender = Gender.male;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: Colors.lightBlue.shade900,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.venus,
                              size: 80,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'FEMALE',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )
                          ]),
                      onPress: () {
                        setState(() {
                          activeGender = Gender();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: Colors.lightBlue.shade900,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: [
                        Text(
                          height.toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'cm',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbColor: Colors.lightBlue.shade100,
                        activeTrackColor: Colors.white,
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30.0),
                        trackHeight: 1,
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 100,
                        max: 220,
                        onChanged: (double value) {
                          setState(() {
                            height = value.toInt();
                          });
                        },
                      ),
                    ),
                    Text(
                      'HEIGHT',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                onPress: () {},
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      colour: Colors.lightBlue.shade900,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            weight.toString(),
                            style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                  icon: Icon(
                                    FontAwesomeIcons.minus,
                                    color: Colors.white,
                                  ),
                                  onTap: () {
                                    setState(() {
                                      weight--;
                                    });
                                  }),
                              SizedBox(
                                width: 10,
                              ),
                              RoundIconButton(
                                  icon: Icon(
                                    FontAwesomeIcons.plus,
                                    color: Colors.white,
                                  ),
                                  onTap: () {
                                    setState(() {
                                      weight++;
                                    });
                                  }),
                            ],
                          )
                        ],
                      ),
                      onPress: () {},
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: Colors.lightBlue.shade900,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          SizedBox(height: 5),
                          Text(
                            age.toString(),
                            style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                  icon: Icon(
                                    FontAwesomeIcons.minus,
                                    color: Colors.white,
                                  ),
                                  onTap: () {
                                    setState(() {
                                      age--;
                                    });
                                  }),
                              SizedBox(
                                width: 10,
                              ),
                              RoundIconButton(
                                  icon: Icon(
                                    FontAwesomeIcons.plus,
                                    color: Colors.white,
                                  ),
                                  onTap: () {
                                    setState(() {
                                      age++;
                                    });
                                  }),
                            ],
                          )
                        ],
                      ),
                      onPress: () {},
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Calculate bmiCalculate =
                    new Calculate(height: height, weight: weight);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultPage(
                            bmiResult: bmiCalculate.calculateBMI(),
                            result: bmiCalculate.getResults(),
                            review: bmiCalculate.getReview())));
              },
              child: Container(
                width: double.infinity,
                height: kBottomContainerHeight,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.only(bottom: 5),
                color: Colors.lightBlue.shade800,
                child: Center(
                  child: Text(
                    'Calculate',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}

class Gender {
  static Gender male = Gender();

  static Object female = Gender();
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.icon, required this.onTap});

  final Icon icon;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: icon,
      shape: CircleBorder(),
      fillColor: kButtonColor,
      onPressed: () {
        onTap();
      },
      constraints: BoxConstraints.tightFor(
        width: 40,
        height: 40,
      ),
      elevation: 7,
    );
  }
}
