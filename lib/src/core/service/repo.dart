import 'package:dealermaster/src/core/service/dio_client.dart';

/// Absract class which can be extended in repository
abstract class Repo {
  final DioClient client = DioClient.instance;
  // Future<String> getToken(String refreshToken);
}
