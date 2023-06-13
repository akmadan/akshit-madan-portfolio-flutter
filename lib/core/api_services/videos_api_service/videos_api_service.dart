import 'dart:developer';

import 'package:akshit_madan/core/api_layer/api_response.dart';
import 'package:akshit_madan/core/api_layer/clients/videos_api_client.dart';
import 'package:akshit_madan/core/api_layer/extensions/api_response_parser.dart';
import 'package:akshit_madan/features/videos/models/videos_data_ui_model.dart';
import 'package:akshit_madan/project/local/db.dart';

class VideosApiService {
  final VideosApiClient videosApiClient;
  VideosApiService({
    required this.videosApiClient,
  });

  Future<ApiResponse<VideosDataUiModel>> fetchVideos() async {
    try {
      const path = '';

      final response = await videosApiClient.get(path);

      if (response.isSuccessful()) {
        if (response.data.isNull) {
          VideosDataUiModel videosDataUiModel =
              VideosDataUiModel.fromMap(sampleVideoResult);
          return ApiResponse(data: videosDataUiModel);
        } else {
          VideosDataUiModel videosDataUiModel =
              VideosDataUiModel.fromMap(response.data);
          return ApiResponse(data: videosDataUiModel);
        }
      } else {
        VideosDataUiModel videosDataUiModel =
            VideosDataUiModel.fromMap(sampleVideoResult);
        return ApiResponse(data: videosDataUiModel);
      }
    } catch (e) {
      log(e.toString());
      VideosDataUiModel videosDataUiModel =
          VideosDataUiModel.fromMap(sampleVideoResult);
      return ApiResponse(data: videosDataUiModel);
    }
  }
}
