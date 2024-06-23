import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Card(
        color: const Color.fromARGB(180, 255, 255, 255),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32),
            side: const BorderSide(width: 1, color: Colors.transparent)),
        margin: const EdgeInsets.symmetric(horizontal: 60),
        child: const Padding(
          padding: EdgeInsets.only(left: 18.0),
          child: Row(
            children: [
              Icon(
                Icons.search_rounded,
                color: Colors.black,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'Search a city',
                style: TextStyle(fontSize: 18, color: Colors.black54),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
