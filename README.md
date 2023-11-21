A Flutter package to easily access the Location params on the go, without the need of writing extra lines of code

## Features

#### A flutter package that can:

* One liner -> *LocationHelperUtil.instance.getCurrentLocationData();*
* Check for Permissions, so you don't have to write any code to check for the Location Permissions
* Check for GPS, so you don't need to turn it on if required for getting the Location
* Returns a helper model, so you will get all information about your location data as well as permission results
* Easy to manage, One Liner you only have to write one line of code to get the location
* This package depends on *https://pub.dev/packages/location* :)

## Additional information

* Easy to use and manage
* Helper model gives all the information
* One liner, no need to write any extra lines of code

## Basic Setup

```
    LocationHelperUtil.instance.getCurrentLocationData().then((LocationDataModel? locationDataModel) {
      if (locationDataModel != null && locationDataModel.locationData != null && locationDataModel.locationResultsEnum == LocationResultsEnums.permissionGranted) {
        setState(() {
          location = "Lat: ${locationDataModel.locationData!.latitude} lon:${locationDataModel.locationData!.longitude}";
        });
      } else {
        setState(() {
          location = "Something went wrong, check LocationDataModel instance for details :)";
        });
      }
    });
```

## Signature

```
    Future<LocationDataModel?> getCurrentLocationData()
```
