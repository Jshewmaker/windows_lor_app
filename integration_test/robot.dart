import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

class Robot {
  Robot(this.tester);

  WidgetTester tester;

  Future<void> findCardList() async {
    await tester.pumpAndSettle();
    expect(find.byType(ListTile), findsWidgets);
  }

  Future<void> openCardDetails() async {
    await tester.pumpAndSettle();
    await tester.tap(find.text('Acceleration Gate'));
    await tester.pumpAndSettle();
    Future.delayed(const Duration(seconds: 4));
    expect(find.byType(Image), findsNWidgets(2));
  }
}
