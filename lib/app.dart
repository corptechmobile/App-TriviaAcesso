// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:acessonovo/app/pages/home/home_page.dart';
import 'package:acessonovo/app/pages/input/input_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'flavors.dart';
import 'pages/my_home_page.dart';

class App extends StatefulWidget {
  final bool hasUser;
  const App({
    Key? key,
    required this.hasUser,
  }) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    super.initState();
    tempoSplash();
  }

  void tempoSplash() async {
    await Future.delayed(const Duration(seconds: 1));
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      title: F.title,
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.blue,
      ),
      
      localizationsDelegates: const [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('pt', 'BR'),
      ],
      home: _flavorBanner(
        child: widget.hasUser ? const HomePage() : const InputScreen(),
        show: kDebugMode,
      ),
    );
  }

  Widget _flavorBanner({
    required Widget child,
    bool show = true,
  }) =>
      show
          ? Banner(
              child: child,
              location: BannerLocation.topStart,
              message: F.name,
              color: Colors.green.withOpacity(0.6),
              textStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 12.0, letterSpacing: 1.0),
              textDirection: TextDirection.ltr,
            )
          : Container(
              child: child,
            );
}