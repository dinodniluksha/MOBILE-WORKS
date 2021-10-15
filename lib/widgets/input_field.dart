import 'package:flutter/material.dart';
import 'package:grocerya/widgets/text_containers/text_field_container.dart';
import 'package:grocerya/constant/constants.dart';

class InputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const InputField({
    Key? key,
    this.hintText = "",
    this.icon = Icons.person,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: gPrimaryColor,
        decoration: InputDecoration(
          hintText: hintText,
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
      ),
    );
  }
}