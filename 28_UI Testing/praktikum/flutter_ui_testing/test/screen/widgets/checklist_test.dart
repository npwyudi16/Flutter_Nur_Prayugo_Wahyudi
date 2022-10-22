import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ui_testing/model/checklist_model.dart';
import 'package:flutter_ui_testing/screen/widgets/checklist.dart';
import 'package:provider/provider.dart';

late Checklist checkList;

Widget createChecklistScreen() => ChangeNotifierProvider<Checklist>(
      create: (context) {
        checkList = Checklist();
        return checkList;
      },
      child: const MaterialApp(
        home: ChecklistScreen(),
      ),
    );

void addItems() {
  for (var i = 0; i < 10; i += 2) {
    checkList.add(i);
  }
}

void main() {
  group('Checklist Page Widget Tests', () {
    testWidgets('Test if ListView shows up', (tester) async {
      await tester.pumpWidget(createChecklistScreen());
      addItems();
      await tester.pumpAndSettle();
      expect(find.byType(ListView), findsOneWidget);
    });

    testWidgets('Testing Remove Button', (tester) async {
      await tester.pumpWidget(createChecklistScreen());
      addItems();
      await tester.pumpAndSettle();
      var totalItems = tester.widgetList(find.byIcon(Icons.close)).length;
      await tester.tap(find.byIcon(Icons.close).first);
      await tester.pumpAndSettle();
      expect(tester.widgetList(find.byIcon(Icons.close)).length,
          lessThan(totalItems));
      expect(find.text('Removed from Checklist.'), findsOneWidget);
    });
  });
}
