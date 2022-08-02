import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_redesign/models/chat_model.dart';
import 'package:flutter_whatsapp_redesign/shared/constants.dart';

class StoryHorizontalList extends StatelessWidget {
  const StoryHorizontalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ChatModel> list = chats.where((e) => e.storyModel != null).toList();

    return SizedBox(
      height: 85,
      width: MediaQuery.of(context).size.width / 1.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        clipBehavior: Clip.none,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        shrinkWrap: true,
        itemCount: list.length + 1,
        itemBuilder: (context, i) {
          if (i == 0) {
            return Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Column(
                children: [
                  DottedBorder(
                    color: Colors.grey,
                    borderType: BorderType.Circle,
                    dashPattern: const [10, 7],
                    strokeWidth: 2,
                    child: Container(
                      height: 55,
                      width: 55,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.transparent,
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Add",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            );
          }

          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(right: 8),
                width: 60,
                height: 60,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [Colors.green, Colors.blue],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Container(
                  width: 55,
                  height: 55,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: primaryColor, width: 3),
                    image: DecorationImage(
                      image: NetworkImage(list[i - 1].imageUrl),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                list[i - 1].name,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
