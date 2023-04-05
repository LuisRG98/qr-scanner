import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/providers/ui_provider.dart';

import 'pages/pages.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => UiProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Qr Reader',
        initialRoute: 'home',
        routes: {
          'home': (_) => const HomePage(),
          'map': (_) => const MapPage(),
        },
        theme: ThemeData.light().copyWith(
            primaryColor: Colors.deepPurpleAccent,
            colorScheme:
                const ColorScheme.light(primary: Colors.deepPurpleAccent),
            floatingActionButtonTheme: const FloatingActionButtonThemeData(
              backgroundColor: Colors.deepPurpleAccent,
            )),
      ),
    );
  }
}
