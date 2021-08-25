import 'package:flutter_assignment_revedor_india/Resuable.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage({
    required this.bmiResult,
    required this.result,
    required this.review,
  });

  final String bmiResult;
  final String result;
  final String review;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('BMI Calculator'),
        backgroundColor: Colors.lightBlue.shade900,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Center(
              child: Container(
                child: Text(
                  'Your Results',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
                onPress: () {},
                colour: Colors.lightBlue.shade900,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      result.toString(),
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      bmiResult,
                      style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      review,
                      style: TextStyle(fontSize: 25, color: Colors.white),
                      textAlign: TextAlign.center,
                    )
                  ],
                )),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: double.infinity,
              height: 80,
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.only(bottom: 10),
              color: Colors.lightBlue.shade800,
              child: Center(
                child: Text(
                  'Re-Calculate',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
