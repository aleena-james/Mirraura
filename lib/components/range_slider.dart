import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
   final ValueChanged<RangeValues> onWidgetChanged;

MyStatefulWidget({Key? key, required this.onWidgetChanged}) : super(key: key);   
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
   RangeValues _currentRangeValues = const RangeValues(40, 80);
  
   
  @override
  Widget build(BuildContext context) {
    return  RangeSlider(
      values: _currentRangeValues,
      min: 0,
      max: 100,
      divisions: 5,
      labels: RangeLabels(
        _currentRangeValues.start.round().toString(),
        _currentRangeValues.end.round().toString(),
      ),
      onChanged: (RangeValues values) {
        setState(() {
          _currentRangeValues = values;
          widget.onWidgetChanged(_currentRangeValues);
        });
      },
    );
  }
}