import 'dart:async';

import 'package:clean_arch/core/app_widget.dart';
import 'package:flutter/material.dart';

Future<void> bootstrap()async{

  runZonedGuarded(() {
    runApp(AppWidget());
  }, (error, stack) {
    
  },);

}