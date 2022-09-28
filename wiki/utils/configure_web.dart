import 'package:flutter_web_plugins/flutter_web_plugins.dart';

void configureApp() {
  // to remove # from url
  setUrlStrategy(PathUrlStrategy());
}
