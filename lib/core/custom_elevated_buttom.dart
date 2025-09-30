import 'package:flutter/material.dart';

class CustomElevatedButtom extends StatelessWidget {
  const CustomElevatedButtom({super.key,required this.text,
  required this.onPress});
  final String text;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed:onPress,

        child:Text(text));
  }
}
