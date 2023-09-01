/// Route Path Generation Builder
///
/// ```dart
/// extension MyRouteBuilder on MyRoute {
///
///   // Main route → ----------------------------------- ↓ ↓
///
///   @PageLinkAnnotation(page: HomeScreen1)
///   static MyRoute get home1 => MyRoute('/home1');
///
///   @PageLinkAnnotation(page: HomeScreen2)
///   static MyRoute get home2 => MyRoute('/home2');
///
///   // ----------------------------------------------------
///
///   // Sub Route → ------------------------------------ ↓ ↓
///
///   @PageLinkAnnotation(page: DetailScreen1)
///   MyRoute get detail1 => MyRoute(join(path, '/detail1'));
///
///   @PageLinkAnnotation(page: DetailScreen2)
///   MyRoute get detail2 => MyRoute(join(path, '/detail2'));
///
/// }
/// ```
class MyRoute {
  /// route path
  final String path;

  MyRoute(this.path);

  /// Convert nested paths to one string
  String build({
    /// path param optional
    Map<String, String> pathParameters = const <String, String>{},
  }) {
    String newPath = path;
    for (final entry in pathParameters.entries) {
      newPath = newPath.replaceAll(':${entry.key}', entry.value);
    }
    return newPath;
  }
}

/// Annotations for links
///
/// ```dart
/// @PageLinkAnnotation(page: HomeScreen)
/// const String home = '/home';
///
/// ```
class PageLinkAnnotation {
  /// screen or page
  final Type page;
  final String? description;
  const PageLinkAnnotation({
    required this.page,
    this.description,
  });
}
