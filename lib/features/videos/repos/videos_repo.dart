import 'package:akshit_madan/core/api_services/videos_api_service/videos_api_service.dart';
import 'package:akshit_madan/features/videos/models/videos_data_ui_model.dart';

class VideosRepo {
  final VideosApiService videosApiService;
  VideosRepo({
    required this.videosApiService,
  });

  Future<List<VideoDataUiModel>> fetchVideos() async {
    VideosDataUiModel? videosDataUiModel =
        (await videosApiService.fetchVideos()).getData;
    if (videosDataUiModel != null) {
      return videosDataUiModel.videos;
    } else {
      return [];
    }
  }
}
