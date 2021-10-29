import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:parse_json_flutter/screen/hm_UI2.dart';
import 'package:parse_json_flutter/screen/hm_ui.dart';
import 'package:parse_json_flutter/screen/pendingorder_page.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NewUI(),
    );
  }
}
