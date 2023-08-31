import 'package:flutter_test/flutter_test.dart';
import 'package:go_router_extension/go_router_extension.dart';
import 'package:go_router_extension/go_router_extension_platform_interface.dart';
import 'package:go_router_extension/go_router_extension_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockGoRouterExtensionPlatform
    with MockPlatformInterfaceMixin
    implements GoRouterExtensionPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final GoRouterExtensionPlatform initialPlatform = GoRouterExtensionPlatform.instance;

  test('$MethodChannelGoRouterExtension is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelGoRouterExtension>());
  });

  test('getPlatformVersion', () async {
    GoRouterExtension goRouterExtensionPlugin = GoRouterExtension();
    MockGoRouterExtensionPlatform fakePlatform = MockGoRouterExtensionPlatform();
    GoRouterExtensionPlatform.instance = fakePlatform;

    expect(await goRouterExtensionPlugin.getPlatformVersion(), '42');
  });
}
