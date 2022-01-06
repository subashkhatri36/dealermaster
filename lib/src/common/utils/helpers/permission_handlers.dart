import 'package:permission_handler/permission_handler.dart';

class PermissionHandlers {
  static Future<bool> requestPermissions(Permission permission) async {
    PermissionStatus permissionStatus = await permission.status;

    if (permissionStatus != PermissionStatus.granted) {
      await permission.request();
      permissionStatus = await permission.status;
    }

    if (permissionStatus == PermissionStatus.permanentlyDenied) {
      /// open system settings
      await openAppSettings();
      await permission.request();
      permissionStatus = await permission.status;
    }

    return permissionStatus == PermissionStatus.granted;
  }
}
