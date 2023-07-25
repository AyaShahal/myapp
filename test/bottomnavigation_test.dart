import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../lib/search.dart';
import '../lib/profile.dart';
import '../lib/main.dart';
import '../lib/bottomnavigation.dart';
void main() {
  testWidgets('Test Bottom Navigation Bar', (WidgetTester tester) async {
   
    await tester.pumpWidget(MaterialApp(
      home: MyWidget(), 
    ));
    expect(find.text('Home'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.search));
    expect(find.text('Search'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.person));
    expect(find.text('Profile'), findsOneWidget);
  });
}
