import 'package:device_info_pod_server/src/generated/device_info.dart';
import 'package:serverpod/serverpod.dart';

class DeviceInfoEndpoint extends Endpoint {
  /// find [DeviceInfoModel], order by createdAt
  Future<List<DeviceInfoModel>> findAll(Session session) {
    return DeviceInfoModel.find(
      session,
      orderBy: DeviceInfoModel.t.createdAt,
    );
  }

  /// insert [model] to DB
  Future<void> insert(Session session, DeviceInfoModel model) {
    return DeviceInfoModel.insert(
      session,
      model..createdAt = DateTime.now(),
    );
  }

  /// delete all [DeviceInfoModel]
  Future<int> deleteAll(Session session) {
    return DeviceInfoModel.delete(
      session,
      where: (t) => t.createdAt <= DateTime.now(),
    );
  }

  /// count [DeviceInfoModel]
  Future<int> count(Session session) {
    return DeviceInfoModel.count(session);
  }
}
