import 'package:flutter/material.dart';

class HourForecast extends StatelessWidget {
  const HourForecast({
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
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      width: 67.5,
      height: 105,
      decoration: BoxDecoration(
        color: const Color.fromARGB(110, 255, 255, 255),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Text(time),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage('https:$conditionIcon'),
                  fit: BoxFit.fill),
            ),
          ),
          Text(' ${temp.round()}\u00b0')
        ],
      ),
    );
  }
}
