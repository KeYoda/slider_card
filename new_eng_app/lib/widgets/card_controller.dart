import 'package:get/get.dart';
import 'package:flutter/material.dart';

class CardController extends GetxController {
  final List<String> items;
  final Color color;

  CardController({required this.items, required this.color}) {
    for (var item in items) {
      itemCounts[item] = 1.obs; // Başlangıçta tüm öğeler 1 olarak ayarlanır
    }
  }

  var cardColors = <int, Color>{}.obs;
  var textVisibility = <int, bool>{}.obs;
  var iconColors = <int, Color>{}.obs;
  var imageVisibility = <int, bool>{}.obs;
  var itemCounts = <String, RxInt>{}.obs; // Öğelerin sayıları için bir harita

  void updateColorsAndVisibility(String inputText) {
    for (int i = 0; i < items.length; i++) {
      if (items[i].toLowerCase() == inputText.toLowerCase()) {
        cardColors[i] = color;
        textVisibility[i] = true;
        iconColors[i] = Colors.transparent;
        imageVisibility[i] = true;

        // Öğenin sayısını azalt
        if (itemCounts[items[i]]!.value > 0) {
          itemCounts[items[i]]!.value--;
        }
      } else {
        cardColors[i] = Colors.black;
        textVisibility[i] = false;
        iconColors[i] = Colors.white;
        imageVisibility[i] = false;
      }
    }
  }
}
