import 'package:flutter/material.dart';

class NavButton extends StatelessWidget {
  const NavButton({Key? key, required this.icon, required this.onPressed, required this.isSelected}) : super(key: key);
  final IconData icon;
  final Function() onPressed;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        icon,
        color: isSelected ? Colors.white : Colors.grey,
      ),
    );
  }
}
