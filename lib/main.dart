import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mertcanerbasi/controllers/slide_controller.dart';
import 'package:mertcanerbasi/firebase_options.dart';
import 'package:mertcanerbasi/utils/constants.dart';
import 'package:mertcanerbasi/controllers/menu_app_controller.dart';
import 'package:mertcanerbasi/screens/main/main_screen.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mertcan Erbasi',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Constants.primaryColor,
        textTheme: GoogleFonts.ralewayTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Constants.textColor),
        canvasColor: Constants.accentColor,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => MenuAppController(),
          ),
          ChangeNotifierProvider(
            create: (context) => SlideController(),
          ),
        ],
        child: const MainScreen(),
      ),
    );
  }
}
