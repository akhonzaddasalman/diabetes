import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mindingherdia/Controller/Provider/auth_provider.dart';
import 'package:mindingherdia/View/Screens/AppScreens/home_screen.dart';
import 'package:mindingherdia/View/Screens/IntroScreens/splash_screen.dart';
import 'package:mindingherdia/View/Screens/IntroScreens/wellcome_screen.dart';
import 'package:mindingherdia/firebase_options.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: ((context) => AuthProvider())),
        ],
        child: Builder(builder: (context) {
          return ScreenUtilInit(
            designSize: const Size(360, 690),
            minTextAdapt: true,
            splitScreenMode: true,
            builder: (context, child) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'MindingHerDia',
                routes: {
                  '/welcomeScreen': (context) => const WelcomeScreen(),
                  '/home': (context) => const HomePageScreen(),
                  // '/login': (context) => const SignInScreen(),
                  // '/signUp': (context) => const SignUpScreen(),
                },
                home: child,
              );
            },
            child: const SplashScreen(),
          );
        }));
  }
}
