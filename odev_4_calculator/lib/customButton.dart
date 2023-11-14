import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color btnColor;
  final Color txtColor;
  final VoidCallback callBack;

  CustomButton(
      {required this.text, required this.btnColor, required this.callBack, required this.txtColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: SizedBox(
        width: 100,
        height: 100,
        child: ElevatedButton(
          onPressed: callBack,
          child: Text(
            text,
            style: TextStyle(
              fontSize: 30,
              color: txtColor,
            ),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateColor.resolveWith((states) => btnColor),
            elevation: MaterialStateProperty.all(6),

            shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(64))),
          ),
        ),
      ),
    );
  }
}
