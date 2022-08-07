import 'dart:async';

import 'package:location/location.dart';

class LocationService {
  final _location = Location();
  final StreamController<LocationData> _locationController =
      StreamController<LocationData>.broadcast();

  Stream<LocationData> get location => _locationController.stream;

  LocationService() {
    _location.onLocationChanged.listen((locationData) {
      _locationController.add(locationData);
    });
  }

  Future<LocationData> getLocation() async {
    return await _location.getLocation();
  }
}
