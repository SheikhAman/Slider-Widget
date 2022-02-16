import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Slider'),
        ),
        body: const SliderWidget(),
      ),
    );
  }
}

class SliderWidget extends StatefulWidget {
  const SliderWidget({Key? key}) : super(key: key);

  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double _slider1Val = 0.5;
  double _slider2Val = 50.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Slider(
          activeColor: Colors.black,
          inactiveColor: Colors.grey,
          onChanged: (double value) {
            setState(() => _slider1Val = value);
          },
          value: _slider1Val,
        ),
        const SizedBox(
          height: 30,
        ),
        Slider(
            activeColor: Colors.black,
            inactiveColor: Colors.grey,
            value: _slider2Val,
            min: 0.0,
            max: 100.0,
            divisions: 5,
            label: '${_slider2Val.round()}',
            onChanged: (double value) {
              setState(() => _slider2Val = value);
            }),
      ],
    );
  }
}
