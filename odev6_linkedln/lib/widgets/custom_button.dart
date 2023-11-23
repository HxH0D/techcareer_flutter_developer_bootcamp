import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Widget text;
  final Widget icon;
  final Widget sizeBox ;
  final bool horizontal;
  final VoidCallback onPressed;
  final Color buttonColor;
  final Color textColor;
  final EdgeInsetsGeometry btnPadding;
  final EdgeInsetsGeometry btnMargin;



  CustomButton({
    required this.text,
    required this.icon,
    required this.onPressed,
    required this.sizeBox,
    this.horizontal = false,
    this.buttonColor = Colors.black,
    this.textColor = Colors.black,
    required this.btnPadding,
    required this.btnMargin,

  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin: btnMargin,
        padding: btnPadding,
        child: horizontal
            ? Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            icon,
            sizeBox,
            text,
          ],
        )
            : Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            icon,
            sizeBox,
            text,
          ],
        ),
      )
    );
  }
}
