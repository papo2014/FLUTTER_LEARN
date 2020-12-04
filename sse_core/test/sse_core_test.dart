import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sse_core/sse_core.dart';

void main() {
  const MethodChannel channel = MethodChannel('sse_core');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await SseCore.platformVersion, '42');
  });
}
