import 'package:flutter/material.dart';

abstract class Global {
  static const Color white = Colors.white38;
  static const Color boxColor = Colors.blueAccent;
  static const Color blue = Colors.blue;

  static const List ruang = [
    {
      'location': 'LABORATORIUM',
      'name': 'Ima Kusumawati, A.Md.AK',
      'title': 'LABORAT',
      'photo': 'assets/person/person1.jpg',
      'locationphoto': 'assets/person/person1.jpg',
      'status': true,
      'position': [-0.04, -0.02],
      'tile': 16,
    },
    {
      'location': 'RUANG RAPAT',
      'name': 'Test NAMA',
      'title': '-',
      'photo': 'assets/person/person1.jpg',
      'locationphoto': 'assets/person/person1.jpg',
      'status': true,
      'position': [0.0, -0.1],
      'tile': 13,
    },
  ];
}
