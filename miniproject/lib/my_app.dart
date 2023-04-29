import 'package:flutter/material.dart';
import 'package:miniproject/View/Pages/Dashboard/dashboard_page.dart';
import 'package:miniproject/View/Pages/Dashboard/dashboard_view_model.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    MaterialColor myAppColor = const MaterialColor(0xFF5D3891, <int, Color>{
      50: Color(0xFF5D3891),
      100: Color(0xFF5D3891),
      200: Color(0xFF5D3891),
      300: Color(0xFF5D3891),
      400: Color(0xFF5D3891),
      500: Color(0xFF5D3891),
      600: Color(0xFF5D3891),
      700: Color(0xFF5D3891),
      800: Color(0xFF5D3891),
      900: Color(0xFF5D3891),
    });
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => DashboardViewModel(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: myAppColor,
          scaffoldBackgroundColor: Colors.white,
        ),
        routes: {
          '/': (context) => const DashboardPage(),
        },
      ),
    );
  }
}
