import 'package:location/location.dart';
import 'package:location_helper_juni1289/utils/enums.dart';

class LocationDataModel {
  LocationData? locationData;
  LocationResultsEnums locationResultsEnum;

  LocationDataModel({this.locationData, required this.locationResultsEnum});
}
