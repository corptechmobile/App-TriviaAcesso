import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flavors.dart';
import 'main.dart' as runner;

Future<void> main() async {
  
  await initializeDateFormatting();
  SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      
    ]);
  F.appFlavor = Flavor.trivia;
  
  await runner.main();
  
   
}