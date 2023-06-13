import 'package:akshit_madan/core/api_layer/dio/dio_client.dart';
import 'package:akshit_madan/core/config/environment.dart';

class LikesApiClient extends DioClient {
  LikesApiClient()
      : super(
          baseUrl: Environment.instance.likesBaseUrl,
          isAuthenticatorRequired: false,
        );
}
