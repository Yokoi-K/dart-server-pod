import 'package:device_info_pod_client/device_info_pod_client.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final clientProvider = Provider(
  // Can't use "localhost" with emulator.
  (ref) => Client('http://10.0.2.2:8080/'),
);
