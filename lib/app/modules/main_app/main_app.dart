import 'package:flutter/material.dart';
import 'package:flutter_project_setup/utils/constants/themes/app_theme.dart';
import 'package:flutter_project_setup/widgets/dismiss_keyboard.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // to control the zoom level of your app
    MediaQueryData windowData = MediaQueryData.fromWindow(WidgetsBinding.instance.window);
    windowData = windowData.copyWith(
      textScaleFactor: 1.0,
    );

    return DismissKeyboard(
      child: MediaQuery(
        data: windowData,
        child: MaterialApp(
          title: "Put Your App Name here",
          debugShowCheckedModeBanner: false,
          theme: CustomAppTheme.lightTheme,
          darkTheme: CustomAppTheme.darkTheme,
          themeMode: ThemeMode.system,
          // home: ,
          // initialRoute: ,
        ),
      ),
    );
  }
}
