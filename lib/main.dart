import 'package:flutter/material.dart';
import 'package:osamastore/const/theme_data.dart';
import 'package:osamastore/provider/darktheme_provider.dart';
import 'package:osamastore/screen/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
   MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DarkThemeProvider themeChangeProvider =DarkThemeProvider();

  void getCurrentAppTheme()async{
   themeChangeProvider.setDarkTheme = await themeChangeProvider.darkThemePrefs.getTheme();
  }

  @override
  void initState() {
    getCurrentAppTheme();
    // TODO: implement initState
    super.initState();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:[
        ChangeNotifierProvider(create: (_){
          return themeChangeProvider;
        })
      ],
      child: Consumer<DarkThemeProvider>(
        builder: (context,themeProvider,child){
          return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: Styles.themeData(themeProvider.getDarkTheme(),context),
          home: HomeScreen(),
        );}
      ),
    );
  }
}