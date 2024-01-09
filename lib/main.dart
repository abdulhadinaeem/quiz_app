import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/screens/demo.dart';
import 'services/question_provider.dart';

void main() {
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => QuestionProvider(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          textTheme: const TextTheme(
            displayLarge: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
            displayMedium: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
            displaySmall: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
          pageTransitionsTheme: PageTransitionsTheme(
            builders: {
              TargetPlatform.android: PageTransition(
                      type: PageTransitionType.rightToLeft, child: this)
                  .matchingBuilder,
            },
          ),
        ),
        home: const Demo(),
        debugShowCheckedModeBanner: false,
        // initialRoute: RouteNames.welcomeScreen,
      ),
    );
  }
}
