import 'package:flutter/material.dart';

class Styles{
  static ThemeData themeData(bool isDarkTheme,BuildContext context){
    return ThemeData(
      
      scaffoldBackgroundColor: 
      isDarkTheme? const Color(0xff00001a):const Color(0xFFFFFFFF),
      
      primaryColor: Colors.blue,

      colorScheme:
        ThemeData().colorScheme.copyWith(
          secondary: isDarkTheme? const Color(0xff00001a):const Color(0xFFFFFFFF),
          brightness : isDarkTheme? Brightness.dark : Brightness.light,
        ),

      cardColor:
      isDarkTheme? const Color(0xff00001a):const Color(0xFFFFFFFF),

      canvasColor:
      isDarkTheme? const Color(0xff00001a):const Color(0xFFFFFFFF),

      buttonTheme: Theme.of(context).buttonTheme.copyWith(
        colorScheme: isDarkTheme
            ?ColorScheme.dark() :
            ColorScheme.light(),
      ),


    );
  }

}