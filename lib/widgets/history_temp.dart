import 'package:flutter/material.dart';

class HistoryTemp extends StatelessWidget {
  const HistoryTemp({
    super.key,
    required this.time,
    required this.conditionIcon,
    required this.temp,
  });
  final String time;
  final String conditionIcon;
  final double temp;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(time),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage('https:$conditionIcon'), fit: BoxFit.fill),
          ),
        ),
        Text(' ${temp.round()}\u00b0')
      ],
    );
  }
}
