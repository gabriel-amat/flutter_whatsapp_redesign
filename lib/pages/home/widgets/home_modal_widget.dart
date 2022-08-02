import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_redesign/pages/home/widgets/menu.dart';

class HomeModalWidget extends StatelessWidget {
  final ScrollController scrollController;

  const HomeModalWidget({
    Key? key,
    required this.scrollController,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: ListView(
        controller: scrollController,
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            height: 10,
            margin: const EdgeInsets.symmetric(horizontal: 150),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const SizedBox(height: 16),
          const Menu(),
        ],
      ),
    );
  }
}
