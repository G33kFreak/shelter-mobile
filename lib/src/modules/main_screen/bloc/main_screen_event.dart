part of 'main_screen_bloc.dart';

abstract class MainScreenEvent extends Equatable {
  const MainScreenEvent();

  @override
  List<Object?> get props => [];
}

@autoequalMixin
class InitEvent extends MainScreenEvent with _$InitEventAutoequalMixin {}

@autoequalMixin
class UpdateLocation extends MainScreenEvent
    with _$UpdateLocationAutoequalMixin {
  final LocationData locationData;

  const UpdateLocation({required this.locationData});
}
