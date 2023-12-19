// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';
import 'package:riverpodproject/features/movies/views/movies_home_view.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    // await tester.pumpWidget(const ProviderScope(child: MyApp()));

    await mockNetworkImages(() async {
      await tester
          .pumpWidget(ProviderScope(child: MaterialApp(home: MoviesHome())));
      await tester.pumpAndSettle();
      expect(find.text('Dog'), findsOneWidget);

      await tester.enterText(find.byType(TextFormField), 'toy');
      await tester.pump();
      expect(find.text('toy'), findsOneWidget);
    });
    // Verify that our counter starts at 0.
    // expect(find.text('Dog'), findsAtLeastNWidgets(1));
    // expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    // await tester.tap(find.byIcon(Icons.add));

    // await tester.pump();

    // Verify that our counter has incremented.
    // expect(find.text('0'), findsNothing);
    // expect(find.text('1'), findsOneWidget);
  });
}
