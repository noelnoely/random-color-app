// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:random_color_app/random_color_app.dart';

void main() {
  testWidgets('shows greeting text', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const RandomColorApp());

    // Verify that the greeting text is displayed.
    expect(find.text('Hello there'), findsOneWidget);
  });

  testWidgets('updates the background color after tap', (
    WidgetTester tester,
  ) async {
    // Build our app.
    await tester.pumpWidget(const RandomColorApp());

    // Get the initial color.
    final Color? colorBefore = tester
        .widget<Scaffold>(find.byType(Scaffold))
        .backgroundColor;

    // Tap the screen.
    await tester.tap(find.byType(GestureDetector));
    await tester.pump();

    // Get the updated color.
    final Color? colorAfter = tester
        .widget<Scaffold>(find.byType(Scaffold))
        .backgroundColor;

    // Verify that the background color has changed.
    expect(colorBefore, isNotNull);
    expect(colorAfter, isNotNull);
    expect(colorAfter, isNot(colorBefore));
  });
}
