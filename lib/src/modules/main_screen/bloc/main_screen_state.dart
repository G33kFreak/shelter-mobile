part of 'main_screen_bloc.dart';

@autoequalMixin
class MainScreenState extends Equatable with _$MainScreenStateAutoequalMixin {
  final LocationData? locationData;

  const MainScreenState({
    this.locationData,
  });

  MainScreenState copyWith({LocationData? locationData}) =>
      MainScreenState(locationData: locationData ?? this.locationData);
}
