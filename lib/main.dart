import 'package:flutter/material.dart';
import 'package:my_wallet_app/Widgets/Account.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Circular"),
      debugShowCheckedModeBanner: false,
      initialRoute: "/Account",
      routes: {
        '/Account': (context) => const Account(),
      },
    );
  }
}
