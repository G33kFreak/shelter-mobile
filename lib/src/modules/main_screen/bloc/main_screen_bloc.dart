import 'dart:async';

import 'package:autoequal/autoequal.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:location/location.dart';
import 'package:template/src/services/location/location_service.dart';

part 'main_screen_bloc.g.dart';
part 'main_screen_event.dart';
part 'main_screen_state.dart';

class MainScreenBloc extends Bloc<MainScreenEvent, MainScreenState> {
  final LocationService _locationService;

  StreamSubscription<LocationData>? _userLocationSubscription;

  MainScreenBloc({required LocationService locationService})
      : _locationService = locationService,
        super(const MainScreenState()) {
    on<InitEvent>(_onInitEvent);
    on<UpdateLocation>(_onUpdateLocation);
  }

  void _onInitEvent(
    InitEvent event,
    Emitter<MainScreenState> emit,
  ) {
    _userLocationSubscription =
        _locationService.location.listen(_locationListener);
  }

  void _locationListener(LocationData location) {
    add(UpdateLocation(locationData: location));
  }

  void _onUpdateLocation(
    UpdateLocation event,
    Emitter<MainScreenState> emit,
  ) {
    emit(state.copyWith(locationData: event.locationData));
  }
}
