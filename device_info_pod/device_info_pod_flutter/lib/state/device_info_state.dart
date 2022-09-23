import 'package:device_info_pod_client/device_info_pod_client.dart';
import 'package:device_info_pod_flutter/repository/device_info_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final deviceInfoStateProvider =
    StateNotifierProvider<DeviceInfoState, AsyncValue<List<DeviceInfoModel>>>(
  (ref) => DeviceInfoState(ref.watch(deviceInfoRepositoryProvider)),
);

class DeviceInfoState extends StateNotifier<AsyncValue<List<DeviceInfoModel>>> {
  DeviceInfoState(this._repository) : super(const AsyncLoading()) {
    fetch();
  }

  final DeviceInfoRepository _repository;

  Future<void> fetch() async {
    state = AsyncValue.data(
      await _repository.fetch(),
    );
  }

  Future<void> add(DeviceInfoModel model) async {
    await _repository.add(model);
  }

  Future<void> clear() async {
    await _repository.clear();
  }
}
