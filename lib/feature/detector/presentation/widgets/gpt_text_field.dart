import 'package:flutter/material.dart';

class GPTTextField extends StatelessWidget {
  const GPTTextField({
    required this.controller,
    required this.onChanged,
    required this.hintText,
    super.key,
  });

  final TextEditingController controller;
  final void Function(String)? onChanged;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      textInputAction: TextInputAction.done,
      textAlignVertical: TextAlignVertical.top,
      keyboardType: TextInputType.multiline,
      expands: true,
      maxLines: null,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(16, 16, 32, 40),
        hintText: hintText,
      ),
    );
  }
}
