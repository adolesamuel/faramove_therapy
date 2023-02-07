import 'package:faramove_therapy/root_page.dart';
import 'package:faramove_therapy/screens/podcast/podcast_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  //Set orientation as potrait
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, child) {
          //child is not available.
          return MaterialApp(
            title: 'Therapy App',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.blue,
              appBarTheme: const AppBarTheme(
                elevation: 0,
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
              ),
            ),
            scrollBehavior: const CupertinoScrollBehavior(),
            initialRoute: '/',
            routes: routes(),
          );
        });
  }
}

//Easy Routes Table.
Map<String, WidgetBuilder> routes() => <String, WidgetBuilder>{
      '/': (context) => const RootPage(),
      PodCastPage.route: (context) => const PodCastPage(),
    };
