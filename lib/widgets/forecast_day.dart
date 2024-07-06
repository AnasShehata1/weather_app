import 'package:flutter/material.dart';

class ForecastDay extends StatelessWidget {
  const ForecastDay({
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
    return Container(
      width: 158,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color.fromARGB(110, 255, 255, 255),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
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
                  image: NetworkImage('https:$conditionIcon'),
                  fit: BoxFit.fill),
            ),
          ),
          Text(condition)
        ],
      ),
    );
  }
}
