/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: unused_import
// ignore_for_file: unnecessary_import
// ignore_for_file: overridden_fields
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: depend_on_referenced_packages

import 'package:serverpod/serverpod.dart';
import 'package:serverpod_serialization/serverpod_serialization.dart';
import 'dart:typed_data';
import 'protocol.dart';

class DeviceInfoModel extends TableRow {
  @override
  String get className => 'DeviceInfoModel';
  @override
  String get tableName => 'device_info';

  static final t = DeviceInfoModelTable();

  @override
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

  @override
  Map<String, dynamic> serializeForDatabase() {
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

  @override
  Map<String, dynamic> serializeAll() {
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

  @override
  void setColumn(String columnName, value) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'version':
        version = value;
        return;
      case 'brand':
        brand = value;
        return;
      case 'device':
        device = value;
        return;
      case 'hardware':
        hardware = value;
        return;
      case 'manufacturer':
        manufacturer = value;
        return;
      case 'model':
        model = value;
        return;
      case 'supported64BitAbis':
        supported64BitAbis = value;
        return;
      case 'isPhysicalDevice':
        isPhysicalDevice = value;
        return;
      case 'createdAt':
        createdAt = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<DeviceInfoModel>> find(
    Session session, {
    DeviceInfoModelExpressionBuilder? where,
    int? limit,
    int? offset,
    Column? orderBy,
    List<Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.find<DeviceInfoModel>(
      where: where != null ? where(DeviceInfoModel.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<DeviceInfoModel?> findSingleRow(
    Session session, {
    DeviceInfoModelExpressionBuilder? where,
    int? offset,
    Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.findSingleRow<DeviceInfoModel>(
      where: where != null ? where(DeviceInfoModel.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<DeviceInfoModel?> findById(Session session, int id) async {
    return session.db.findById<DeviceInfoModel>(id);
  }

  static Future<int> delete(
    Session session, {
    required DeviceInfoModelExpressionBuilder where,
    Transaction? transaction,
  }) async {
    return session.db.delete<DeviceInfoModel>(
      where: where(DeviceInfoModel.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    Session session,
    DeviceInfoModel row, {
    Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    Session session,
    DeviceInfoModel row, {
    Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    Session session,
    DeviceInfoModel row, {
    Transaction? transaction,
  }) async {
    return session.db.insert(row, transaction: transaction);
  }

  static Future<int> count(
    Session session, {
    DeviceInfoModelExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.count<DeviceInfoModel>(
      where: where != null ? where(DeviceInfoModel.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef DeviceInfoModelExpressionBuilder = Expression Function(
    DeviceInfoModelTable t);

class DeviceInfoModelTable extends Table {
  DeviceInfoModelTable() : super(tableName: 'device_info');

  @override
  String tableName = 'device_info';
  final id = ColumnInt('id');
  final version = ColumnInt('version');
  final brand = ColumnString('brand');
  final device = ColumnString('device');
  final hardware = ColumnString('hardware');
  final manufacturer = ColumnString('manufacturer');
  final model = ColumnString('model');
  final supported64BitAbis = ColumnSerializable('supported64BitAbis');
  final isPhysicalDevice = ColumnBool('isPhysicalDevice');
  final createdAt = ColumnDateTime('createdAt');

  @override
  List<Column> get columns => [
        id,
        version,
        brand,
        device,
        hardware,
        manufacturer,
        model,
        supported64BitAbis,
        isPhysicalDevice,
        createdAt,
      ];
}

@Deprecated('Use DeviceInfoModelTable.t instead.')
DeviceInfoModelTable tDeviceInfoModel = DeviceInfoModelTable();
