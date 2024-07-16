import 'package:flutter/material.dart';
import 'package:new_eng_app/data/slider_data.dart';

final List<SliderData> home = [
  SliderData(
    image: const AssetImage('assets/ev2.jpg'),
    text: 'Evin bölümleri',
    lists: [
      'living room',
      'bedroom',
      'kitchen',
      'dining room',
      'backyard',
      'balcony',
      'upstairs',
      'garden',
      'pool',
    ],
    detailImages: {},
  ),
  SliderData(
    image: const AssetImage('assets/mutfak2.jpg'),
    text: 'Mutfak',
    lists: [
      'Blender',
      'Bottle opener',
      'Bowl',
      'Bread box',
      'Coffee maker',
      'Colander',
    ],
    detailImages: {},
  ),
  SliderData(
    image: const AssetImage('assets/yatakodası.jpg'),
    text: 'Yatak odası',
    lists: [
      'Blender',
      'Bottle opener',
      'Bowl',
      'Bread box',
      'Coffee maker',
      'Colander',
    ],
    detailImages: {},
  ),
];

final List<SliderData> feel = [
  SliderData(
    image: const AssetImage('assets/olumlu.jpg'),
    text: 'Olumlu Duygular',
    lists: [
      'good',
      'happy',
      'kind',
      'interested',
      'brave',
      'enthusiastic',
      'fascinated',
      'passionate',
      'devoted',
      'affectionate',
      'playful',
      'confident',
      'optimistic',
      'excited',
      'pleased'
    ],
    detailImages: {},
  ),
  SliderData(
    image: const AssetImage('assets/olumsuz2.jpg'),
    text: 'Olumsuz Duygular',
    lists: [
      'sad',
      'unhappy',
      'bad',
      'unpleasant',
      'disappointed',
      'bored',
      'afraid',
      'angry',
      'worried',
      'ashamed',
      'guilty',
      'indecisive'
    ],
    detailImages: {},
  ),
];

final List<SliderData> fruits = [
  SliderData(
    image: const AssetImage('assets/meyve.jpg'),
    text: 'Meyveler',
    lists: [
      'apple',
      'pear',
      'apricot',
      'banana',
      'strawbery',
      'cherry',
      'melon',
      'orange',
      'blackberry',
      'pineapple',
      'coconut'
    ],
    detailImages: {
      'apple': const AssetImage('assets/apple.jpg'),
      'pineapple': const AssetImage('assets/pineapple.jpg'),
      'pear': const AssetImage('assets/pear.jpg'),
      'apricot': const AssetImage('assets/apricot.jpg'),
      'banana': const AssetImage('assets/banana.jpg'),
      'strawbery': const AssetImage('assets/strawbery.jpg'),
      'cherry': const AssetImage('assets/cherry.jpg'),
      'melon': const AssetImage('assets/melon.jpg'),
      'orange': const AssetImage('assets/orange.jpg'),
      'blackberry': const AssetImage('assets/blackberry.jpg'),
      'coconut': const AssetImage('assets/coconut.jpg'),
    },
  ),
  SliderData(
    image: const AssetImage('assets/sebze.jpg'),
    text: 'Sebzeler',
    lists: [
      'patato',
      'tomato',
      'mushroom',
      'cucumber',
      'onion',
      'garlic',
      'pepper',
      'corn',
      'carrot',
      'leek',
      'pumpkin',
      'beans',
      'peas',
      'cabbage',
      'parsley',
      'ginger'
    ],
    detailImages: {},
  ),
];
final List<SliderData> days = [
  SliderData(
    image: const AssetImage('assets/günler.jpg'),
    text: 'Günler',
    lists: [
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday',
      'Sunday',
    ],
    detailImages: {},
  ),
  SliderData(
    image: const AssetImage('assets/aylar.jpg'),
    text: 'Aylar',
    lists: [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December'
    ],
    detailImages: {},
  ),
];

final gridViewPart = [
  GridViewData(
    color: Colors.deepOrange.shade300,
    text: 'Ev ile ilgili kelimeler',
    sliderList: home,
  ),
  GridViewData(
    color: Colors.blue.shade300,
    text: 'Duygular ve hisler ',
    sliderList: feel,
  ),
  GridViewData(
    color: Colors.green.shade300,
    text: 'Meyve ve Sebzeler',
    sliderList: fruits,
  ),
  GridViewData(
    color: Colors.yellow.shade300,
    text: 'Günler,aylar,mevsimler',
    sliderList: days,
  ),
];
