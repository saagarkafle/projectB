import 'package:flutter/material.dart';

class SlideableWidget extends StatefulWidget {
  final List<Widget> widgetList;
  final double widgetHeight;
  const SlideableWidget(
      {super.key, required this.widgetList, required this.widgetHeight});
  @override
  SlideableWidgetState createState() => SlideableWidgetState();
}

class SlideableWidgetState extends State<SlideableWidget> {
  late PageController _pageController;
  int _currentPage = 0;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: widget.widgetHeight,
          child: PageView.builder(
            controller: _pageController,
            itemCount: widget.widgetList.length,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            itemBuilder: (BuildContext context, int index) {
              return widget.widgetList[index];
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
              List<Widget>.generate(widget.widgetList.length, (int index) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              width: _currentPage == index ? 12.0 : 8.0,
              height: 8.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentPage == index ? Colors.blue : Colors.grey,
              ),
            );
          }),
        ),
      ],
    );
  }
}
