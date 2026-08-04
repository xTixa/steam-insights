import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:steam_insights/core/theme/app_theme.dart';

void main() {
  testWidgets('AppTheme builds light and dark ThemeData', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      MaterialApp(
        theme: AppTheme.light(),
        darkTheme: AppTheme.dark(),
        home: const Scaffold(body: Text('Steam Insights')),
      ),
    );

    expect(find.text('Steam Insights'), findsOneWidget);
  });
}
