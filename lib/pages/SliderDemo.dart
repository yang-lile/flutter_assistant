import 'package:flutter_assistant/template/MyScaffold.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
        appBarTitle: "SliderDemo",
        body: Center(
          child: _SliderDemo(),
        ));
  }
}

class _SliderDemo extends StatefulWidget {
  @override
  __SliderDemoState createState() => __SliderDemoState();
}

class __SliderDemoState extends State<_SliderDemo> {
  double _slider1 = 0;
  double _slider2 = 0;
  double _slider3 = 0;
  double _slider4 = 0;
  double _slider5s = 0;
  double _slider5e = 0;
  double _padding = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // 和Slider1联动，当Slider1结束滑动后刷新
        Container(
          width: 300.0,
          height: 300.0,
          decoration: BoxDecoration(
            border: Border.all(width: 1),
          ),
          child: AnimatedPadding(
            curve: Curves.elasticOut,
            padding: EdgeInsets.all(_padding * 100 + 20),
            duration: Duration(milliseconds: 1000),
            child: ColoredBox(color: Colors.blue),
          ),
        ),
        Slider(
          value: _slider1,
          label: "$_slider1",
          onChanged: (value) => setState(() => _slider1 = value),
          onChangeEnd: (value) => setState(() => _padding = value),
        ),
        // iOS没有label属性？艹，不方便
        CupertinoSlider(
          value: _slider2,
          onChanged: (value) => setState(() => _slider2 = value),
        ),
        Slider(
          value: _slider3,
          label: "$_slider3",
          divisions: 5,
          onChanged: (value) => setState(() => _slider3 = value),
        ),
        Slider(
          value: _slider4,
          label: "$_slider4",
          divisions: 5,
          min: 0,
          max: 100,
          onChanged: (value) => setState(() => _slider4 = value),
        ),
        RangeSlider(
          values: RangeValues(_slider5s, _slider5e),
          onChanged: (value) {
            setState(() {
              _slider5s = value.start;
              _slider5e = value.end;
            });
          },
          min: 0,
          max: 10,
          labels: RangeLabels("$_slider5s", "$_slider5e"),
          divisions: 10,
        ),
      ],
    );
  }
}
