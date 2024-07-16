import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_eng_app/data/slider_data_list.dart';
import 'package:new_eng_app/screens/card_detail_screen.dart';
import 'package:new_eng_app/widgets/slider_card.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(
          'BlackBear',
          style: TextStyle(
            color: Theme.of(context).colorScheme.background,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: gridViewPart.length,
        itemBuilder: (context, index) {
          final gridViewData = gridViewPart[index];
          return Column(
            children: [
              Container(
                margin: const EdgeInsets.all(8),
                alignment: Alignment.centerLeft,
                child: Text(
                  gridViewData.text,
                  style: GoogleFonts.afacad(),
                ),
              ),
              CarouselSlider.builder(
                itemCount: gridViewData.sliderList.length,
                itemBuilder: (context, itemIndex, realIndex) {
                  final sliderData = gridViewData.sliderList[itemIndex];

                  return SliderCard(
                    color: gridViewData.color,
                    image: sliderData.image,
                    length: sliderData.lists.length,
                    index: itemIndex,
                    text: sliderData.text,
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => CardDetailPage(
                            detailImages: sliderData.detailImages,
                            color: gridViewData.color,
                            text: sliderData.text,
                            items: sliderData.lists,
                            icon: Icons.lock,
                          ),
                        ),
                      );
                    },
                  );
                },
                options: CarouselOptions(),
              ),
            ],
          );
        },
      ),
    );
  }
}
