import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final List<IconData> icons;
  final List<String> labels;
  final Function(int) onTabSelected;

  const CustomBottomNavigationBar({
    Key? key,
    required this.icons,
    required this.labels,
    required this.onTabSelected,
  }) : super(key: key);

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;
  Color desiredColor = const Color.fromRGBO(37, 181, 218, 1);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          widget.icons.length,
          (index) => buildTabItem(index),
        ),
      ),
    );
  }

  Widget buildTabItem(int index) {
    bool isSelected = index == _selectedIndex;
    return InkWell(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
        widget.onTabSelected(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            widget.icons[index],
            color: isSelected ? desiredColor : Colors.grey,
            size: 33,
          ),
          Text(
            widget.labels[index],
            style: TextStyle(
              color: isSelected ? desiredColor : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
