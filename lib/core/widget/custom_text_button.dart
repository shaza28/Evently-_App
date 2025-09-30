import 'package:evently_app/core/resourses/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {super.key,
      required this.text,
      required this.onTap,
      this.alignment = Alignment.center});
  final String text;
  final VoidCallback onTap;
   final Alignment alignment;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment:alignment,
      child: GestureDetector(

          onTap: onTap,
          child: Text(
            text,
            textAlign: TextAlign.right,
            style: GoogleFonts.inter(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppColors.blue,
              decoration: TextDecoration.underline,
              fontStyle: FontStyle.italic,
              decorationColor: AppColors.blue,
            ),
          )),
    );
  }
}
