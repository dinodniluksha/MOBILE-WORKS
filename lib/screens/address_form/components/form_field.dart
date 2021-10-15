import 'package:flutter/material.dart';
import 'package:grocerya/constant/constants.dart';

class CustomFormField extends StatefulWidget {
  final String hintText;
  final String autoFilled;
  const CustomFormField({
    Key? key,
    required this.hintText,
    this.autoFilled = '',
  }) : super(key: key);

  @override
  _CustomFormFieldState createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: widget.autoFilled,
      decoration: InputDecoration(
        hintText: widget.hintText,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: gBlack50),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: gBlack),
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: gBlack),
        ),
      ),
      showCursor: true,
      // The validator receives the text that the user has entered.
      validator: (value) {},
      controller: null,
    );
  }
}
