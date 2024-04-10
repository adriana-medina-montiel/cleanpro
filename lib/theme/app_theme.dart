
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Apptheme{
  //constante de color primario
  static const primaryColor = Color.fromARGB(248, 0, 0, 0);
  static const secondaryColor = Color.fromARGB(248, 2, 2, 37);
  static const backColor = Color.fromARGB(248, 159, 179, 204);
 //constante de theme
 static final ThemeData darkTheme = ThemeData.dark().copyWith(
      scaffoldBackgroundColor: backColor,
      appBarTheme:  AppBarTheme(
        color: primaryColor,
        titleTextStyle: GoogleFonts.lato(
          color:Colors.amber,
          fontSize: 28.5,
          fontWeight: FontWeight.bold,
           ),
        ),
 iconTheme: const IconThemeData(
  color: primaryColor,
  size: 35.0,
 ),
 elevatedButtonTheme: ElevatedButtonThemeData(
  style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all(
      primaryColor,
    ),
    foregroundColor: MaterialStateProperty.all(
      const Color.fromARGB(255, 136, 133, 133),
    ),
   textStyle: MaterialStateProperty.all(
    GoogleFonts.pacifico(fontSize: 25.0,)
   ),
  ),
 ),
 textTheme: TextTheme(
  headlineLarge: GoogleFonts.acme(
    color: primaryColor,
    fontSize: 26.5,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.italic,
    decoration: TextDecoration.lineThrough,
    decorationColor: primaryColor,
    decorationStyle:TextDecorationStyle.solid,
    decorationThickness: 1.0
  ),
  headlineMedium: GoogleFonts.alef(
    color: primaryColor,
    fontSize: 21.2,
    fontWeight: FontWeight.bold,
  ),
   //estilo para texto muy pequeño
    bodySmall: GoogleFonts.aBeeZee(
      color: secondaryColor,
      fontSize: 16.0,
    )
 ),

 );
}