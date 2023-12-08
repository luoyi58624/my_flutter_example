import 'package:flutter/material.dart';
import 'package:my_flutter/my_flutter.dart';
import 'package:my_flutter/pages/material/index.dart';

import 'pages/root_page/root_page.dart';

void main() async {
  await initMyFlutter();
  runApp(const MyMaterialApp(
    home: RootPage(),
  ));
}
