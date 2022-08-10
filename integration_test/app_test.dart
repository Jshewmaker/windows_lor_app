import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:windows_lor_app/main.dart' as app;

import 'robot.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end-to-end test', () {
    testWidgets('find litst tile', (tester) async {
      app.main();
      final robot = Robot(tester);
      await robot.findCardList();
      await robot.openCardDetails();

      // // Finds the floating action button to tap on.
      // final Finder fab = find.byTooltip('Increment');

      // // Emulate a tap on the floating action button.
      // await tester.tap(fab);

      // // Trigger a frame.
      // await tester.pumpAndSettle();

      // Verify the counter increments by 1.
      // expect(find.text('1'), findsOneWidget);
    });
  });
}
