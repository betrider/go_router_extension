import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'go_router_extension_platform_interface.dart';

/// An implementation of [GoRouterExtensionPlatform] that uses method channels.
class MethodChannelGoRouterExtension extends GoRouterExtensionPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('go_router_extension');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
