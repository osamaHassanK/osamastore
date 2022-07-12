import 'package:flutter/material.dart';
import '../provider/darktheme_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(title:Text("FlutterWithOsama"),
        backgroundColor: Color(0xFF3a4b5d),
        centerTitle: true,
        actions: [
          CircleAvatar(
          backgroundImage:AssetImage("assets/image/Untitled design.png"),
          ),
          SizedBox(width: 10,)
        ],
      ),
      body: Center(
        child: SwitchListTile(
            secondary: Icon(themeState.getDarkTheme()
                ? Icons.dark_mode_outlined
                : Icons.light_mode_outlined),
            onChanged: (bool value) {
              themeState.setDarkTheme = value;
            },
          value: themeState.getDarkTheme(),
            ),
      ),
    );
  }
}
