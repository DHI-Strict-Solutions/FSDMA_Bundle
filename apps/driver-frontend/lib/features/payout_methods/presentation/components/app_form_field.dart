import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_common/core/extensions/extensions.dart';

class AppFormField extends StatelessWidget {
  final String? label;
  final String hintText;
  final String? initialValue;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final void Function(String?)? onChanged;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;

  const AppFormField({
    super.key,
    this.label,
    required this.hintText,
    this.initialValue,
    this.validator,
    this.onSaved,
    this.inputFormatters,
    this.keyboardType,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (label != null) ...[
          Text(
            label!,
            style: context.labelLarge,
          ),
          const SizedBox(
            height: 8,
          ),
        ],
        TextFormField(
          onSaved: onSaved,
          onChanged: onChanged,
          inputFormatters: inputFormatters,
          initialValue: initialValue,
          validator: validator,
          decoration: InputDecoration(
            hintText: hintText,
            filled: false,
          ),
        )
      ],
    );
  }
}
