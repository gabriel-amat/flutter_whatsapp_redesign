import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_redesign/pages/home/widgets/chat_widget.dart';
import 'package:flutter_whatsapp_redesign/pages/home/widgets/groups_widget.dart';
import 'package:flutter_whatsapp_redesign/shared/helper/bubble_indicator_painter.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> with SingleTickerProviderStateMixin {
  PageController? pageController;
  Color left = Colors.black;
  Color right = Colors.grey;

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    pageController?.dispose();
    super.dispose();
  }

  void _onChatButtonPress() {
    pageController!.animateToPage(
      0,
      duration: const Duration(milliseconds: 500),
      curve: Curves.decelerate,
    );
  }

  void _onGroupsButtonPress() {
    pageController!.animateToPage(
      1,
      duration: const Duration(milliseconds: 500),
      curve: Curves.decelerate,
    );
  }

  Widget _buildMenuBar(BuildContext context) {
    return Container(
      width: 300.0,
      height: 50.0,
      decoration: const BoxDecoration(
        color: Color(0xFFF5F7F9),
        borderRadius: BorderRadius.all(Radius.circular(25.0)),
      ),
      child: CustomPaint(
        painter: TabIndicationPainter(pageController: pageController!),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: TextButton(
                onPressed: _onChatButtonPress,
                style: TextButton.styleFrom(
                  splashFactory: NoSplash.splashFactory,
                ),
                child: Text(
                  "Chat",
                  style: TextStyle(
                    color: left,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: _onGroupsButtonPress,
                style: TextButton.styleFrom(
                  splashFactory: NoSplash.splashFactory,
                ),
                child: Text(
                  "Groups",
                  style: TextStyle(
                    color: right,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (overscroll) {
        overscroll.disallowIndicator();
        return true;
      },
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height >= 775.0
            ? MediaQuery.of(context).size.height
            : 775.0,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            _buildMenuBar(context),
            Expanded(
              flex: 2,
              child: PageView(
                controller: pageController,
                onPageChanged: (i) {
                  if (i == 0) {
                    setState(() {
                      right = Colors.grey;
                      left = Colors.black;
                    });
                  } else if (i == 1) {
                    setState(() {
                      right = Colors.black;
                      left = Colors.grey;
                    });
                  }
                },
                children: <Widget>[
                  ConstrainedBox(
                    constraints: const BoxConstraints.expand(),
                    child: const ChatWidget(),
                  ),
                  ConstrainedBox(
                    constraints: const BoxConstraints.expand(),
                    child: const GroupWidget(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
