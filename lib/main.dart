import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:seal_gon_app/app/app.bottomsheets.dart';
import 'package:seal_gon_app/app/app.dialogs.dart';
import 'package:seal_gon_app/app/app.locator.dart';
import 'package:seal_gon_app/app/app.router.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:stacked_services/stacked_services.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  setupDialogUi();
  setupBottomSheetUi();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ShadApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.startupView,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
      navigatorObservers: [
        StackedService.routeObserver,
      ],
    );
  }
}
