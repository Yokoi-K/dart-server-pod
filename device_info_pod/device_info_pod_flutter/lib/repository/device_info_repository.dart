import 'package:device_info_pod_client/device_info_pod_client.dart';
import 'package:device_info_pod_flutter/infrastructure/client.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final deviceInfoRepositoryProvider = Provider(
  (ref) => DeviceInfoRepository(
    ref.watch(clientProvider),
  ),
);

class DeviceInfoRepository {
  DeviceInfoRepository(this._client);

  final Client _client;

  Future<List<DeviceInfoModel>> fetch() {
    return _client.deviceInfo.findAll();
  }

  Future<void> add(DeviceInfoModel model) {
    return _client.deviceInfo.insert(model);
  }

  Future<int> clear() {
    return _client.deviceInfo.deleteAll();
  }

  Future<int> count() {
    return _client.deviceInfo.count();
  }
}
