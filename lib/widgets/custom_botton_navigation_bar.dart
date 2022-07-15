import 'package:flutter/material.dart';

class CustomBottonNavigatonBar extends StatelessWidget {
  final Function(String) onChanged;
  final String label;
  final bool obscureText;

  const CustomBottonNavigatonBar(
    {Key? key,
      required this.onChanged,
      required this.label,
      required this.obscureText// = false, // (ERRO NO FALSE)
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.purple,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: TextField(
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            // border: InputBorder.none,
            label: Text(
              label,
              style: const TextStyle(
                fontSize: (20),
                color: Colors.white),
            ),
          ),
          onChanged: onChanged,
          obscureText: obscureText,
        ),
      ),
    );
  }
}
