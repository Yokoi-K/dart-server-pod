import 'package:device_info_pod_flutter/ui/page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: HomePage(),
    ),
  );
}
