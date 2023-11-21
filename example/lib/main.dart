import 'package:flutter/material.dart';
import 'package:location_helper_juni1289/location/helper/location_helper_util.dart';
import 'package:location_helper_juni1289/location/model/location_data_model.dart';
import 'package:location_helper_juni1289/utils/enums.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String location = "Please press button to get location.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Location Helper Test"),
        ),
        body: Center(
          child: Text(
            location,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              _getLocationData();
            },
            tooltip: 'Increment',
            child: const Icon(Icons.local_airport)));
  }

  void _getLocationData() {
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
  }
}
