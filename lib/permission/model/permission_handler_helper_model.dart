import 'package:location_helper_juni1289/utils/enums.dart';

class PermissionHandlerHelperModel {
  LocationResultsEnums permissionsResult;
  String permissionName;

  ///helper model to hold the permission grant results
  ///and the permission name to print in the logs
  ///[permissionsResult] is required
  ///[permissionName] is required, helps in logs
  PermissionHandlerHelperModel({required this.permissionsResult, required this.permissionName});
}
