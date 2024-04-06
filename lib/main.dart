import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:p3l_k3_mobile/router.dart';
import 'package:tinycolor2/tinycolor2.dart';

void main() {
  runApp(ProviderScope(child: MainApp()));
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        colorSchemeSeed: TinyColor.fromString('F96F22').toColor(),
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      routerConfig: _appRouter.config(),
    );
  }
}
