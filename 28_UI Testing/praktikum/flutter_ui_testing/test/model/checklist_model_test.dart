import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ui_testing/model/checklist_model.dart';

void main() {
  group('Testing App Provider', () {
    var checklist = Checklist();

    test('A new item should be added', () {
      var number = 35;
      checklist.add(number);
      expect(checklist.items.contains(number), true);
    });
    test('An item should be removed', () {
      var number = 45;
      checklist.add(number);
      expect(checklist.items.contains(number), true);
      checklist.remove(number);
      expect(checklist.items.contains(number), false);
    });
  });
}
