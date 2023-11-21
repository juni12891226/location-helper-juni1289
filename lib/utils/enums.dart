enum LocationResultsEnums {
  permissionGranted, //permission is granted and location is available
  permissionDenied, //permission is denied
  permissionPermanentlyDenied, //permission is permanently denied
  permissionRestricted, //permission is restricted from user
  locationServicesDisabled, //GPS is disabled
  permissionHelperModelIsNull, //permission helper model is null for any reason
  unknownIssue //worst case :)
}
