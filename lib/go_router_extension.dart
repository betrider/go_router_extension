
import 'go_router_extension_platform_interface.dart';

class GoRouterExtension {
  Future<String?> getPlatformVersion() {
    return GoRouterExtensionPlatform.instance.getPlatformVersion();
  }
}

class ClassNameAnnotation {
  final Type className;
  const ClassNameAnnotation({required this.className});
}