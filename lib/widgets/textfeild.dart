import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  final String hint;
  final String label;

  const TextFieldWidget({Key? key, required this.hint, required this.label})
      : super(key: key);

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  bool _isHidden = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: _isHidden,
      decoration: InputDecoration(
        hintText: widget.hint,
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _isHidden = !_isHidden;
            });
          },
          icon: _isHidden
              ? Icon(Icons.visibility_off_rounded)
              : Icon(Icons.visibility),
        ),
        prefixIcon: Icon(
          Icons.lock,
          color: Colors.blueAccent,
        ),
        labelText: widget.label,
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xff874ecf)),
          borderRadius: BorderRadius.all(Radius.circular(14.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xff874ecf), width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(14.0)),
        ),
      ),
    );
  }
}
