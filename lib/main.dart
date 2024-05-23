import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:p3l_k3_mobile/logic/auth_logic.dart';
import 'package:p3l_k3_mobile/router.dart';
import 'package:tinycolor2/tinycolor2.dart';
import 'package:toastification/toastification.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(<DeviceOrientation>[DeviceOrientation.portraitUp]);

  OneSignal.initialize('2fe3a6db-c004-424c-9b92-099391f7f88b');

  OneSignal.Notifications.requestPermission(true);

  runApp(ProviderScope(child: MainApp()));
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return Init(
      child: ToastificationWrapper(
        child: MaterialApp.router(
          theme: ThemeData(
            colorSchemeSeed: TinyColor.fromString('F96F22').toColor(),
            fontFamily: GoogleFonts.poppins().fontFamily,
          ),
          routerConfig: _appRouter.config(),
        ),
      ),
    );
  }
}

class Init extends ConsumerWidget {
  const Init({required this.child, super.key});
  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Eager initialization of provider -> https://riverpod.dev/docs/essentials/eager_initialization
    ref.watch(authLogicProvider);
    return child;
  }
}
