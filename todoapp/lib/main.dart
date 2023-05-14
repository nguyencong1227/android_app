import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:todoapp/firebase_options.dart';
import 'package:todoapp/repository/authentication_repository/authentication_repository.dart';
import 'package:todoapp/src/features/authentication/screens/on_boarding_screen/on_boarding_screen.dart';
import 'package:todoapp/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:todoapp/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'src/utils/theme/theme.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => Get.put(AuthenticationRepository()));
  runApp(const App());
}


class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp (
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 300),
      home: const WelcomeScreen(),
    );
  }
}

