import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:todoapp/src/features/authentication/screens/on_boarding_screen/on_boarding_screen.dart';
import 'package:todoapp/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:todoapp/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'src/utils/theme/theme.dart';


void main() => runApp(const App());


class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp (
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: SplashScreen(),
    );
  }
}

