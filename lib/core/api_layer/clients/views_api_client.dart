import 'package:akshit_madan/core/api_layer/dio/dio_client.dart';
import 'package:akshit_madan/core/config/environment.dart';

class ViewsApiClient extends DioClient {
  ViewsApiClient()
      : super(
          baseUrl: Environment.instance.viewsBaseUrl,
          isAuthenticatorRequired: false,
        );
}
