import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_redesign/pages/home/widgets/custom_appbar.dart';
import 'package:flutter_whatsapp_redesign/pages/home/widgets/story_horizontal_list.dart';
import 'package:flutter_whatsapp_redesign/pages/home/widgets/story_vertical_list.dart';
import 'package:flutter_whatsapp_redesign/shared/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'widgets/home_modal_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final draggableController = DraggableScrollableController();
  Widget story = const StoryHorizontalList();

  @override
  void initState() {
    draggableController.addListener(() {
      if (draggableController.pixels < 535) {
        setState(() => story = const StoryVerticaList());
      }
      if (draggableController.pixels > 535) {
        setState(() => story = const StoryHorizontalList());
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.green,
              Colors.blue,
            ],
          ),
        ),
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 30,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.houseChimney, color: Colors.green,),
              ),
              const Spacer(flex: 1),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.phone_outlined, color: Colors.grey),
              ),
              const Spacer(flex: 4),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.camera_alt_outlined, color: Colors.grey),
              ),
              const Spacer(flex: 1),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.person_outline, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [primaryColor, secondColor],
          ),
        ),
        child: Stack(
          children: [
            const CustomAppBar(),
            const SizedBox(height: 8),
            Positioned(
              top: 120,
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                switchInCurve: Curves.easeIn,
                switchOutCurve: Curves.easeOut,
                child: story,
              ),
            ),
            DraggableScrollableSheet(
              minChildSize: 0.1,
              maxChildSize: 0.7,
              initialChildSize: 0.7,
              controller: draggableController,
              builder: (context, scrollController) {
                return HomeModalWidget(
                  scrollController: scrollController,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
