
import 'go_router_extension_platform_interface.dart';

class GoRouterExtension {
  Future<String?> getPlatformVersion() {
    return GoRouterExtensionPlatform.instance.getPlatformVersion();
  }
}
