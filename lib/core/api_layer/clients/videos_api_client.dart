import 'package:akshit_madan/core/api_layer/dio/dio_client.dart';
import 'package:akshit_madan/core/config/environment.dart';

class VideosApiClient extends DioClient {
  VideosApiClient()
      : super(
          baseUrl: Environment.instance.videosBaseUrl,
          isAuthenticatorRequired: false,
        );
}
