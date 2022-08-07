import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template/src/api/api_client.dart';
import 'package:template/src/services/location/location_service.dart';

class ServicesProvider extends StatelessWidget {
  final Widget child;

  const ServicesProvider({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<ApiClient>(
          create: (context) => ApiClient(),
        ),
        RepositoryProvider<LocationService>(
          create: (context) => LocationService(),
        )
      ],
      child: child,
    );
  }
}
