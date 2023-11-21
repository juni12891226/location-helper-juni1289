import 'package:location_helper_juni1289/permission/model/permission_handler_helper_model.dart';
import 'package:location_helper_juni1289/utils/enums.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionHelperUtil {
  /// private constructor
  PermissionHelperUtil._();

  /// the one and only instance of this singleton
  static final instance = PermissionHelperUtil._();

  ///Location Permission
  Future<PermissionHandlerHelperModel?> checkIfLocationPermissionGranted() async {
    PermissionHandlerHelperModel? permissionHandlerHelperModel;
    String permissionName = "Permission.location";

    Map<Permission, PermissionStatus> statuses = await [Permission.location].request();

    if (statuses.isNotEmpty && statuses[Permission.location] != null && statuses[Permission.location]!.isGranted) {
      permissionHandlerHelperModel = PermissionHandlerHelperModel(permissionsResult: LocationResultsEnums.permissionGranted, permissionName: permissionName);
    } else if (statuses.isNotEmpty && statuses[Permission.location] != null && statuses[Permission.location]!.isDenied) {
      permissionHandlerHelperModel = PermissionHandlerHelperModel(permissionsResult: LocationResultsEnums.permissionDenied, permissionName: permissionName);
    } else if (statuses.isNotEmpty && statuses[Permission.location] != null && statuses[Permission.location]!.isPermanentlyDenied) {
      permissionHandlerHelperModel = PermissionHandlerHelperModel(permissionsResult: LocationResultsEnums.permissionPermanentlyDenied, permissionName: permissionName);
    } else if (statuses.isNotEmpty && statuses[Permission.location] != null && statuses[Permission.location]!.isRestricted) {
      permissionHandlerHelperModel = PermissionHandlerHelperModel(permissionsResult: LocationResultsEnums.permissionRestricted, permissionName: permissionName);
    }

    return permissionHandlerHelperModel;
  }
}
