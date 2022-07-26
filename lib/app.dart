import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:windows_lor_app/repository/set_repository.dart';

import 'cards/views/home_view.dart';

class App extends StatelessWidget {
  const App({Key? key, required CardRepository cardRepository})
      : _cardRepository = cardRepository,
        super(key: key);

  final CardRepository _cardRepository;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: _cardRepository,
      child: const LorAppView(),
    );
  }
}

class LorAppView extends StatelessWidget {
  const LorAppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LoR App',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          bodyText1: TextStyle(),
          bodyText2: TextStyle(),
        ).apply(bodyColor: Colors.white, displayColor: Colors.white),
        scaffoldBackgroundColor: Colors.amber,
      ),
      home: const MyHomePage(
        title: 'My Lor App',
      ),
    );
  }
}
