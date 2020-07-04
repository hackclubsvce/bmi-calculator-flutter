import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int height = 160;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('BMI CALCULATOR')),
        ),
        body: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.mars,
                          size: 80.0,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('MALE')
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFF090C55),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.venus,
                          size: 80.0,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('FEMALE')
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Color(0xFF090C55),
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF090C55),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text('HEIGHTS'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '183',
                          style: TextStyle(fontSize: 50.0),
                        ),
                        Text('cm'),
                      ],
                    ),
                    Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double newValue) {
                          height = newValue.round();
                          print(height);
                        })
                  ],
                ),
              ),
            ),
            Expanded(
                child: Row(
              children: <Widget>[],
            ))
          ],
        ));
  }
}
