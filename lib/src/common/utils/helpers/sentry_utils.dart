// import 'dart:io';

// import 'package:dio/dio.dart';
// import 'package:sentry/sentry.dart';

// import 'device_info.dart';
// import 'package_info_utils.dart';

// /// sends the error to sentry
// Future<void> sentryError(dynamic error, [dynamic stackTrace]) async {
//   if (!Sentry.isEnabled) return;
//   //User? user = AuthStorage().currentUser;
//   var event = SentryEvent(
//     release: PackageInfoUtils.packageInfo.version,
//     environment: getEnumName(FlavorConfig.instance.flavor.toString()),
//     platform: Platform.operatingSystem,
//     timestamp: DateTime.now(),
//     user: SentryUser(
//       id: user != null ? user.id.toString() : "",
//       email: user != null ? user.email : "",
//       extras: <String, dynamic>{
//         'email': user != null ? user.email : "",
//         'id': user != null ? user.id.toString() : "",
//         'device': DeviceInfo.name,
//         'deviceId': DeviceInfo.id,
//         'deviceVersion': DeviceInfo.version,
//       },
//     ),
//     culprit: error is DioError ? error.response?.realUri.path : "",
//     throwable: error,
//   );

//   await Sentry.captureEvent(
//     event,
//     stackTrace: stackTrace,
//   );
// }
