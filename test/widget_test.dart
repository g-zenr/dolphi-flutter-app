import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:delphi/main.dart';

void main() {
  testWidgets('Dolphi App smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const ProviderScope(child: DolphiApp()));

    // Verify we are pumping the app without crash
    expect(find.byType(DolphiApp), findsOneWidget);
  });
}
