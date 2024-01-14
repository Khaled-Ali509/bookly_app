import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants.dart';
import 'features/splash/presentation/Views/widgets/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark()
          .copyWith(
          scaffoldBackgroundColor: kdefaultColor,
          textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),

    );
  }
}



