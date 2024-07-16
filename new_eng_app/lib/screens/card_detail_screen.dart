import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_eng_app/widgets/card_controller.dart';

class CardDetailPage extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color color;
  final List<String> items;
  final Map<String, AssetImage> detailImages;

  const CardDetailPage({
    Key? key,
    required this.text,
    required this.icon,
    required this.items,
    required this.color,
    required this.detailImages,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CardController controller =
        Get.put(CardController(items: items, color: color));
    TextEditingController textEditingController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text(text),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Obx(() {
                  return Card(
                    color: Colors.black,
                    child: AnimatedContainer(
                      decoration: BoxDecoration(
                        color: controller.cardColors[index] ?? Colors.black,
                        image: controller.imageVisibility[index] == true
                            ? DecorationImage(
                                image: detailImages[items[index]] ??
                                    const AssetImage('assets/default.jpg'),
                                fit: BoxFit.cover,
                              )
                            : null,
                      ),
                      margin: const EdgeInsets.all(6),
                      duration: const Duration(milliseconds: 500),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            '#1',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Icon(
                            icon,
                            color: controller.iconColors[index] ?? Colors.white,
                          ),
                          Visibility(
                            visible: controller.textVisibility[index] ?? false,
                            child: Text(
                              items[index],
                              style: const TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                });
              },
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Kelimeni yaz',
                contentPadding: const EdgeInsets.all(8),
                suffixIcon: IconButton(
                  onPressed: () {
                    controller
                        .updateColorsAndVisibility(textEditingController.text);
                    textEditingController.clear();
                  },
                  icon: const Icon(Icons.keyboard_double_arrow_right),
                ),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
              ),
              controller: textEditingController,
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
