// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable, camel_case_types

import 'package:flutter/material.dart';

class catager extends StatelessWidget {
  final String name;
  final String nameA;
  final bool isEng;
  var tap;
  final String photo;

  catager({
    Key? key,
    required this.name,
    required this.photo,
    required this.tap,
    required this.isEng,
    required this.nameA,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Column(
        children: [
          Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(photo),
          ),
          Text(
            isEng ? name : nameA,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
