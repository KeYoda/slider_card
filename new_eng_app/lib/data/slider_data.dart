import 'package:flutter/material.dart';

class SliderData {
  final AssetImage image;
  final String text;
  final List<String> lists;
  final Map<String, AssetImage> detailImages;

  SliderData({
    required this.image,
    required this.text,
    required this.lists,
    required this.detailImages,
  });
}

class GridViewData {
  final String text;
  final Color color;
  final List<SliderData> sliderList;

  GridViewData({
    required this.text,
    required this.color,
    required this.sliderList,
  });
}
