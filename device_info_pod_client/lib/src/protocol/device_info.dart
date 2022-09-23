/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: unused_import
// ignore_for_file: unnecessary_import
// ignore_for_file: overridden_fields
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: depend_on_referenced_packages

import 'package:serverpod_client/serverpod_client.dart';
import 'dart:typed_data';
import 'protocol.dart';

class DeviceInfoModel extends SerializableEntity {
  @override
  String get className => 'DeviceInfoModel';

  int? id;
  int? version;
  String? brand;
  String? device;
  String? hardware;
  String? manufacturer;
  String? model;
  late List<String?> supported64BitAbis;
  bool? isPhysicalDevice;
  DateTime? createdAt;

  DeviceInfoModel({
    this.id,
    this.version,
    this.brand,
    this.device,
    this.hardware,
    this.manufacturer,
    this.model,
    required this.supported64BitAbis,
    this.isPhysicalDevice,
    this.createdAt,
  });

  DeviceInfoModel.fromSerialization(Map<String, dynamic> serialization) {
    var _data = unwrapSerializationData(serialization);
    id = _data['id'];
    version = _data['version'];
    brand = _data['brand'];
    device = _data['device'];
    hardware = _data['hardware'];
    manufacturer = _data['manufacturer'];
    model = _data['model'];
    supported64BitAbis = _data['supported64BitAbis']!.cast<String?>();
    isPhysicalDevice = _data['isPhysicalDevice'];
    createdAt = _data['createdAt'] != null
        ? DateTime.tryParse(_data['createdAt'])
        : null;
  }

  @override
  Map<String, dynamic> serialize() {
    return wrapSerializationData({
      'id': id,
      'version': version,
      'brand': brand,
      'device': device,
      'hardware': hardware,
      'manufacturer': manufacturer,
      'model': model,
      'supported64BitAbis': supported64BitAbis,
      'isPhysicalDevice': isPhysicalDevice,
      'createdAt': createdAt?.toUtc().toIso8601String(),
    });
  }
}
