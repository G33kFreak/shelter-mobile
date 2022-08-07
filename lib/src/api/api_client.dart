import 'package:dio/dio.dart';
import 'package:template/src/environment/variables.dart';

class ApiClient {
  Dio get httpClient => Dio(BaseOptions(baseUrl: EnvironmentVariables.baseUrl));
}
