import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_project_setup/app/modules/main_app/main_app.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (value) => runApp(
      const App(),
    ),
  );
}
