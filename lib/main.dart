import 'package:capygotchi/features/auth/pages/login.dart';
import 'package:capygotchi/features/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:appwrite/appwrite.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    Client client = Client()
        .setEndpoint("https://cloud.appwrite.io/v1")
        .setProject("65eb3c30edc0ee1934e6")
        .setSelfSigned(status: true); //! For self signed certificates, only use for development
    Account account = Account(client);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage()
    );
  }
}
