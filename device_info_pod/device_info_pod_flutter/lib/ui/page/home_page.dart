import 'package:device_info_plus/device_info_plus.dart';
import 'package:device_info_pod_client/device_info_pod_client.dart';
import 'package:device_info_pod_flutter/state/device_info_state.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(deviceInfoStateProvider);
    final notifier = ref.watch(deviceInfoStateProvider.notifier);

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo[900],
        appBar: AppBar(
          title: const Text('Test Serverpod'),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () async {
                    final model = await _createDeviceInfoModel();
                    await notifier.add(model);
                    await notifier.fetch();
                  },
                  child: const Text('Add'),
                ),
                ElevatedButton(
                  onPressed: () async {
                    await notifier.clear();
                    await notifier.fetch();
                  },
                  child: const Text('Clear'),
                ),
              ],
            ),
            Expanded(
              child: state.when(
                data: (model) => ListView(
                  children: model
                      .map(
                        (e) => Card(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 8,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('id: ${e.id}'),
                                Text('version: ${e.version}'),
                                Text('brand: ${e.brand}'),
                                Text('device: ${e.device}'),
                                Text('hardware: ${e.hardware}'),
                                Text('manufacturer: ${e.manufacturer}'),
                                Text('model: ${e.model}'),
                                Text(
                                    'supported64BitAbis: ${e.supported64BitAbis}'),
                                Text('isPhysicalDevice: ${e.isPhysicalDevice}'),
                                Text('createdAt: ${e.createdAt}'),
                              ],
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
                error: (e, s) => const Text('error'),
                loading: () => const Text('loading'),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<DeviceInfoModel> _createDeviceInfoModel() async {
    final info = await DeviceInfoPlugin().androidInfo;

    return DeviceInfoModel(
      version: info.version.sdkInt,
      brand: info.brand,
      device: info.device,
      hardware: info.hardware,
      manufacturer: info.manufacturer,
      model: info.model,
      supported64BitAbis: info.supported64BitAbis,
      isPhysicalDevice: info.isPhysicalDevice,
    );
  }
}
