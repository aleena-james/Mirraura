import 'package:flutter/material.dart';
import 'package:mirraura/components/range_slider.dart';
import 'package:mirraura/constant.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';


class FilterPage extends StatefulWidget {
  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  String _size = 'S';
  String _gen = 'W';
  String _cat = 'shirt';
   late RangeValues price;
   late Color color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text("Filters"),
        backgroundColor: spPrimaryColor,),
        body: ListView(
          children: [
            Center(child: Text("Price range",style: TextStyle(fontWeight:FontWeight.bold),),),
            Padding(padding: const EdgeInsets.only(top:8.0,bottom: 8.0), ),
            MyStatefulWidget(
               onWidgetChanged: (newRangeValue) {
                  price = newRangeValue;
                },
            ),
            Divider(),
            Center(child: Text("Color",style: TextStyle(fontWeight:FontWeight.bold),),),
            Padding(padding: const EdgeInsets.only(top: 8.0,bottom: 8.0),),
            ColorPickerPage(
              onColorChanged: (newColor) {
                  color = newColor;
                },
            ),
            Divider(),
            Center(child: Text("Size",style: TextStyle(fontWeight:FontWeight.bold),),),
            Padding(padding: const EdgeInsets.only(top:8.0,bottom: 8.0),),
             Row(
              children: [
                 Radio(value: 'S', groupValue: _size, onChanged: (String? value){setState(() {
                    _size = value!; 
                  });},),
                Text("S"),
                Radio(value: 'M', groupValue: _size, onChanged: (String? value){setState(() {
                    _size = value!; 
                  });},),
                 Text("M"),
                 Radio(value: 'L', groupValue: _size, onChanged: (String? value){setState(() {
                    _size = value!; 
                  });},),
                 Text("L"),
              ],
            ),
              Center(child: Text("Gender",style: TextStyle(fontWeight:FontWeight.bold),),),
               Padding(padding: const EdgeInsets.only(top:8.0,bottom: 8.0),),
                Row(
              children: [
                 Radio(value: 'W', groupValue: _gen, onChanged: (String? value){setState(() {
                    _gen = value!; 
                  });},),
                Text("Women"),
                 Radio(value: 'M', groupValue: _gen, onChanged: (String? value){setState(() {
                    _gen = value!; 
                  });},),
                Text("Men"),
                 ],
            ),
             Center( child: Text("Categories", style: TextStyle(fontWeight:FontWeight.bold),),),
             Padding(padding: const EdgeInsets.only(top:8.0,bottom: 8.0),),
              Row(
              children: [
                 Radio(value:'shirt', groupValue: _cat, onChanged: (String? value){setState(() {
                    _cat = value!; 
                  });},),
                Text("Shirt"),
                 Radio(value:'dress', groupValue: _cat, onChanged: (String? value){setState(() {
                    _cat = value!; 
                  });},),
                Text("Dress"),
                 Radio(value:'jeans', groupValue: _cat, onChanged: (String? value){setState(() {
                    _cat = value!; 
                  });},),
                Text("Jeans"),
                 Radio(value: 'skirt', groupValue: _cat, onChanged: (String? value){setState(() {
                    _cat = value!; 
                  });},),
                Text("Skirt"),
                 ],
            ),
                 Row(
                   children: [
                     Radio(value: 'shoes', groupValue: _cat, onChanged: (String? value){setState(() {
                        _cat = value!; 
                      });},),
                  Text("Shoes"),
                 Radio(value:'heels', groupValue: _cat, onChanged: (String? value){setState(() {
                    _cat = value!; 
                  });},),
                Text("Heels"),
                Radio(value:'kids', groupValue: _cat, onChanged: (String? value){setState(() {
                    _cat = value!; 
                  });},),
                Text("Kids"),
                 ],
                 ),
          ],
        ),
    );
  }
}



class ColorPickerPage extends StatefulWidget {
  final ValueChanged<Color> onColorChanged;

ColorPickerPage({Key? key, required this.onColorChanged}) : super(key: key); 
  @override
  _ColorPickerPageState createState() => _ColorPickerPageState();
}
class _ColorPickerPageState extends State<ColorPickerPage> {
  Color currentColor = Colors.limeAccent;
  
  @override
  Widget build(BuildContext context) {
    return 
      SizedBox(
        height: 300,
        child: Container(
                child: BlockPicker(
                pickerColor: currentColor,
                onColorChanged: (Color color){
                  setState(() => currentColor = color);
                  widget.onColorChanged(currentColor);},
              ),
       ),
      );
  }
}