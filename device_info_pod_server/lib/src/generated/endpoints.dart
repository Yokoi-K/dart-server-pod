/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: public_member_api_docs
// ignore_for_file: unnecessary_import
// ignore_for_file: unused_import

import 'dart:typed_data' as typed_data;
import 'package:serverpod/serverpod.dart';

import 'protocol.dart';

import '../endpoints/device_info_endpoint.dart';

class Endpoints extends EndpointDispatch {
  @override
  void initializeEndpoints(Server server) {
    var endpoints = <String, Endpoint>{
      'deviceInfo': DeviceInfoEndpoint()
        ..initialize(server, 'deviceInfo', null),
    };

    connectors['deviceInfo'] = EndpointConnector(
      name: 'deviceInfo',
      endpoint: endpoints['deviceInfo']!,
      methodConnectors: {
        'findAll': MethodConnector(
          name: 'findAll',
          params: {},
          call: (Session session, Map<String, dynamic> params) async {
            return (endpoints['deviceInfo'] as DeviceInfoEndpoint).findAll(
              session,
            );
          },
        ),
        'insert': MethodConnector(
          name: 'insert',
          params: {
            'model': ParameterDescription(
                name: 'model', type: DeviceInfoModel, nullable: false),
          },
          call: (Session session, Map<String, dynamic> params) async {
            return (endpoints['deviceInfo'] as DeviceInfoEndpoint).insert(
              session,
              params['model'],
            );
          },
        ),
        'deleteAll': MethodConnector(
          name: 'deleteAll',
          params: {},
          call: (Session session, Map<String, dynamic> params) async {
            return (endpoints['deviceInfo'] as DeviceInfoEndpoint).deleteAll(
              session,
            );
          },
        ),
        'count': MethodConnector(
          name: 'count',
          params: {},
          call: (Session session, Map<String, dynamic> params) async {
            return (endpoints['deviceInfo'] as DeviceInfoEndpoint).count(
              session,
            );
          },
        ),
      },
    );
  }

  @override
  void registerModules(Serverpod pod) {}
}
