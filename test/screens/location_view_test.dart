import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:wecount/screens/location_view.dart' show LocationView;
import '../test_utils.dart' show TestUtils;

void main() {
  testWidgets("Widget", (WidgetTester tester) async {
    await tester
        .pumpWidget(TestUtils.makeTestableWidget(child: const LocationView()));
    await tester.pumpAndSettle();

    var findByType = find.byType(Container);
    expect(findByType.evaluate().isEmpty, false);

    expect(find.byType(RawMaterialButton), findsNWidgets(3));
  });
}
