import 'package:flutter/material.dart';

class DayWidget extends StatelessWidget {
  const DayWidget({
    super.key,
    required this.day,
    required this.avg,
    required this.min,
    required this.max,
    required this.conditionIcon,
    required this.condition,
  });
  final String day;
  final double avg;
  final double min;
  final double max;
  final String conditionIcon;
  final String condition;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(day),
        Text('Avg : ${avg.round()} \u00b0'),
        Text('Min : ${min.round()} \u00b0'),
        Text('Max : ${max.round()} \u00b0'),
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage('https:$conditionIcon'), fit: BoxFit.fill),
          ),
        ),
        Text(condition)
      ],
    );
  }
}
