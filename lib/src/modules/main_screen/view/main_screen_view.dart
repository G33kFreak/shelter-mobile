import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template/src/modules/main_screen/bloc/main_screen_bloc.dart';
import 'package:template/src/services/location/location_service.dart';

class MainScreenWidget extends StatelessWidget {
  const MainScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainScreenBloc(
        locationService: context.read<LocationService>(),
      ),
      child: Scaffold(
        body: Center(
          child: BlocBuilder<MainScreenBloc, MainScreenState>(
            builder: (context, state) {
              return Text(state.locationData?.latitude.toString() ?? '');
            },
          ),
        ),
      ),
    );
  }
}
