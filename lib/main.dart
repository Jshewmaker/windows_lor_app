import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:windows_lor_app/app.dart';
import 'package:windows_lor_app/repository/card_repository.dart';

void main() {
  BlocOverrides.runZoned(() => runApp(App(
        cardRepository: CardRepository(),
      )));
}
