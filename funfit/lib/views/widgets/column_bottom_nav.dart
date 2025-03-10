import 'package:flutter/material.dart';

class ColumnBottomNav extends StatefulWidget {
  final IconData bottomNavIcon;
  final String bottomNavLabel;
  final VoidCallback? ontapped;
  final bool isSelected;
  const ColumnBottomNav({
    super.key,
    required this.bottomNavIcon,
    required this.bottomNavLabel,
    this.ontapped,
    required this.isSelected,
  });

  @override
  State<ColumnBottomNav> createState() => _ColumnBottomNavState();
}

class _ColumnBottomNavState extends State<ColumnBottomNav> {
  @override
  Widget build(BuildContext context) {
    // Size mediaQuery = MediaQuery.of(context).size;
    // bool isSelected = true;

    return SizedBox(
      // height: mediaQuery.height,
      // width: mediaQuery.width,
      child: GestureDetector(
        onTap: widget.ontapped,
        child: Column(
          children: [
            Icon(
              widget.bottomNavIcon,
              color: widget.isSelected ? Color(0xff1732A4) : Colors.grey,
            ),
            Text(
              widget.bottomNavLabel,
              style: TextStyle(
                color: widget.isSelected ? Color(0xff1732A4) : Colors.grey,
                fontSize: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
