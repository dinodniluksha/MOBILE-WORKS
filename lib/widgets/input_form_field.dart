import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:grocerya/widgets/text_containers/text_field_container.dart';
import 'package:grocerya/constant/constants.dart';

class InputFormField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String?> onSaved;
  final FieldValidator validator;
  const InputFormField(
      {Key? key,
      this.hintText = "",
      this.icon = Icons.person,
      required this.onSaved,
      required this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        onSaved: onSaved,
        validator: validator,
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
