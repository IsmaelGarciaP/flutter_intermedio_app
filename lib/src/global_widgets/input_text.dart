import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_intermedio_app/src/utils/colors.dart';

class InputText extends StatefulWidget {
  final Widget prefixIcon;
  final bool Function(String) valiator;
  final bool obscureText;
  final void Function(String) onChanged;

  const InputText({
    Key? key,
    required this.prefixIcon,
    required this.valiator,
    this.obscureText = false, required this.onChanged,
  }) : super(key: key);

  @override
  _InputTextState createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
  bool _isOK = false;
  bool _obscureText = false;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText;
  }

  void _validate(String text) {
    if (widget.valiator != null) {
      _isOK = widget.valiator(text);
      setState(() {});
    }

    if(widget.onChanged != null){
      widget.onChanged(text);
    }
  }

  void _onVisibleChanged() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: primaryColor,
      onChanged: _validate,
      obscureText: _obscureText,
      decoration: InputDecoration(
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.obscureText
            ? CupertinoButton(
                minSize: 25,
                padding: const EdgeInsets.all(10),
                child: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off),
                onPressed: _onVisibleChanged)
            : Icon(
                Icons.check_circle,
                color: _isOK ? primaryColor : Colors.grey,
              ),
      ),
    );
  }
}
