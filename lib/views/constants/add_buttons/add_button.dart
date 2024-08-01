import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  const AddButton({
    super.key,
    required this.color,
    required this.onPressed,
  });
  final void Function() onPressed;
  final MaterialColor color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color.withOpacity(0.5),
        shape: BoxShape.circle,
      ),
      child: InkWell(
        onTap: onPressed,
        child: const Icon(Icons.add),
      ),
    );
  }
}
