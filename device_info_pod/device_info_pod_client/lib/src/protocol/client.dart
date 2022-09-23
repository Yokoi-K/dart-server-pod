/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: public_member_api_docs
// ignore_for_file: unused_import
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: depend_on_referenced_packages

import 'dart:io';
import 'dart:typed_data' as typed_data;
import 'package:serverpod_client/serverpod_client.dart';
import 'protocol.dart';

class _EndpointDeviceInfo extends EndpointRef {
  @override
  String get name => 'deviceInfo';

  _EndpointDeviceInfo(EndpointCaller caller) : super(caller);

  /// find [DeviceInfoModel], order by createdAt
  Future<List<DeviceInfoModel>> findAll() async {
    var retval = await caller.callServerEndpoint(
        'deviceInfo', 'findAll', 'List<DeviceInfoModel>', {});
    return (retval as List).cast();
  }

  /// insert [model] to DB
  Future<void> insert(
    DeviceInfoModel model,
  ) async {
    var retval =
        await caller.callServerEndpoint('deviceInfo', 'insert', 'void', {
      'model': model,
    });
    return retval;
  }

  /// delete all [DeviceInfoModel]
  Future<int> deleteAll() async {
    var retval =
        await caller.callServerEndpoint('deviceInfo', 'deleteAll', 'int', {});
    return retval;
  }

  /// count [DeviceInfoModel]
  Future<int> count() async {
    var retval =
        await caller.callServerEndpoint('deviceInfo', 'count', 'int', {});
    return retval;
  }
}

class Client extends ServerpodClient {
  late final _EndpointDeviceInfo deviceInfo;

  Client(String host,
      {SecurityContext? context,
      ServerpodClientErrorCallback? errorHandler,
      AuthenticationKeyManager? authenticationKeyManager})
      : super(host, Protocol.instance,
            context: context,
            errorHandler: errorHandler,
            authenticationKeyManager: authenticationKeyManager) {
    deviceInfo = _EndpointDeviceInfo(this);
  }

  @override
  Map<String, EndpointRef> get endpointRefLookup => {
        'deviceInfo': deviceInfo,
      };

  @override
  Map<String, ModuleEndpointCaller> get moduleLookup => {};
}
