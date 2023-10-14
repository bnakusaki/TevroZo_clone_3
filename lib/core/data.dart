import 'package:flutter/material.dart';
import 'package:tevrozoclone3/screens/filter_widget/section.dart';

List<String> get sizes => [
      'Small',
      'Medium',
      'Large',
      'Extra Large',
    ];

List<Color> get colors => [
      Colors.black,
      Colors.grey.shade200,
      const Color(0xffc9f66f),
    ];

List<Color> get colorsAlternating => [
      const Color(0xffc9f66f),
      Colors.grey.shade200,
    ];

List<Section> filterSections = [
  Section(
    title: 'Category',
    children: <String>[
      'Outer',
      'Shirt',
      'Shoe',
      'T-Shirt',
      'Sweater',
    ],
  ),
  Section(
    title: 'Brands',
    children: <String>[
      'Nike',
      'Uniqlo',
      'Adidas',
      'H&M',
      'Pool',
    ],
  ),
];
