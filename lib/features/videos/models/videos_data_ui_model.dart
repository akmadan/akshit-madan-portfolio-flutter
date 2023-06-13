import 'dart:convert';

class VideosDataUiModel {
  final List<VideoDataUiModel> videos;
  VideosDataUiModel({
    required this.videos,
  });

  Map<String, dynamic> toMap() {
    return {
      'videos': videos.map((x) => x.toMap()).toList(),
    };
  }

  factory VideosDataUiModel.fromMap(Map<String, dynamic> map) {
    return VideosDataUiModel(
      videos: List<VideoDataUiModel>.from(
          map['videos']?.map((x) => VideoDataUiModel.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory VideosDataUiModel.fromJson(String source) =>
      VideosDataUiModel.fromMap(json.decode(source));
}

class VideoDataUiModel {
  final String videoId;
  final String title;
  final String thumbnailUrl;
  VideoDataUiModel({
    required this.videoId,
    required this.title,
    required this.thumbnailUrl,
  });

  Map<String, dynamic> toMap() {
    return {
      'video_id': videoId,
      'title': title,
      'thumbnail_url': thumbnailUrl,
    };
  }

  factory VideoDataUiModel.fromMap(Map<String, dynamic> map) {
    return VideoDataUiModel(
      videoId: map['video_id'] ?? '',
      title: map['title'] ?? '',
      thumbnailUrl: map['thumbnail_url'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory VideoDataUiModel.fromJson(String source) =>
      VideoDataUiModel.fromMap(json.decode(source));
}
