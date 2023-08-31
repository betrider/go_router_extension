import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'go_router_extension_method_channel.dart';

abstract class GoRouterExtensionPlatform extends PlatformInterface {
  /// Constructs a GoRouterExtensionPlatform.
  GoRouterExtensionPlatform() : super(token: _token);

  static final Object _token = Object();

  static GoRouterExtensionPlatform _instance = MethodChannelGoRouterExtension();

  /// The default instance of [GoRouterExtensionPlatform] to use.
  ///
  /// Defaults to [MethodChannelGoRouterExtension].
  static GoRouterExtensionPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [GoRouterExtensionPlatform] when
  /// they register themselves.
  static set instance(GoRouterExtensionPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
