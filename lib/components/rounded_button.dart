import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton(
      {@required this.inputText,
      @required this.colour,
      @required this.callBack});
  final String inputText;
  final Color colour;
  final Function callBack;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: colour,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: callBack,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            inputText,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
