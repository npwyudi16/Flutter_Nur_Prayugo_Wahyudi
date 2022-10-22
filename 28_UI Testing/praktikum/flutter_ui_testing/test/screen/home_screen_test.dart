import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ui_testing/model/checklist_model.dart';
import 'package:flutter_ui_testing/screen/home_screen.dart';
import 'package:provider/provider.dart';

Widget createHomeScreen() => ChangeNotifierProvider<Checklist>(
      create: (context) => Checklist(),
      child: const MaterialApp(
        home: HomeScreen(),
      ),
    );

void main() {
  group('Home Page Widget Tests', () {
    // BEGINNING
    testWidgets('Testing if ListView shows up', (tester) async {
      await tester.pumpWidget(createHomeScreen());
      expect(find.byType(ListView), findsOneWidget);
    });
    // END
    testWidgets('Testing Scrolling', (tester) async {
      await tester.pumpWidget(createHomeScreen());
      expect(find.text('Item 0'), findsOneWidget);
      await tester.fling(find.byType(ListView), const Offset(0, -200), 3000);
      await tester.pumpAndSettle();
      expect(find.text('Item 0'), findsNothing);
    });
    testWidgets('Testing IconButtons', (tester) async {
      await tester.pumpWidget(createHomeScreen());
      expect(find.byIcon(Icons.check), findsNothing);
      await tester.tap(find.byIcon(Icons.check_box).first);
      await tester.pumpAndSettle(const Duration(seconds: 1));
      expect(find.text('Added to Checklist.'), findsOneWidget);
      expect(find.byIcon(Icons.check), findsWidgets);
      await tester.tap(find.byIcon(Icons.check).first);
      await tester.pumpAndSettle(const Duration(seconds: 1));
      expect(find.text('Removed from Checklist.'), findsOneWidget);
      expect(find.byIcon(Icons.check), findsNothing);
    });
  });
}
