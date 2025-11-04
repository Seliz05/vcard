import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vcard_app/main.dart';
import 'package:vcard_app/vcard_screen.dart';

void main() {
  testWidgets('VCardApp renders correctly', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const VCardApp());

    // Verify that our app starts with VCardScreen
    expect(find.byType(VCardApp), findsOneWidget);
    expect(find.byType(MaterialApp), findsOneWidget);
  });

  testWidgets('VCardScreen displays user information', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: VCardScreen()));

    // Verify that user information is displayed
    expect(find.text('Nombre del Estudiante'), findsOneWidget);
    expect(find.text('email@ejemplo.com'), findsOneWidget);
    expect(find.text('github.com/username'), findsOneWidget);
    expect(find.text('Usuario de Github: username'), findsOneWidget);
  });
}