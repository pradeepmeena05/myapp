import 'package:flutter/material.dart';
import 'package:packages/presentation/resources/appcolor.dart';

class Apptheme {

   static  ThemeData lightTheme=ThemeData(
      scaffoldBackgroundColor: Appcolor.lightmode,

      brightness: Brightness.light,

       textTheme: TextTheme(
         bodySmall: TextStyle(color: Appcolor.lightcontent),
         bodyMedium: TextStyle(color: Appcolor.lightcontent),
       )
   );
   static ThemeData darkTheme=ThemeData(
      scaffoldBackgroundColor: Appcolor.darkmode,

      brightness: Brightness.dark,

       textTheme: TextTheme(
         bodySmall: TextStyle(color: Appcolor.darkcontent),
         bodyMedium: TextStyle(color: Appcolor.darkcontent),
       )
   );
}
