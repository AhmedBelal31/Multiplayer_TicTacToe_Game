import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onPressed;
  final String text;

  const CustomButton({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        boxShadow:const[
          BoxShadow(
            color: Colors.blue ,
            blurRadius: 5 ,
            spreadRadius: 0,

          )
        ]
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          minimumSize: Size(
            screenWidth,
            50,
          ),
        ),
        child: Text(text ,style: const TextStyle(
          fontSize: 16
        ),),
      ),
    );
  }
}
