import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String? inputText;
  final double? height;

  const CustomButton({this.inputText, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.4,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.black,
      ),
      child: MaterialButton(
        onPressed: () {},
        child: Text(
          inputText.toString(),
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}