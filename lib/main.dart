import 'package:flutter/material.dart';
import 'package:jokegenerator/Provider/provider.dart';
import 'package:jokegenerator/view/joke_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<JokeproviderServices>(
            create: (_) => JokeproviderServices())
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: JokeScreen(),
      ),
    );
  }
}
