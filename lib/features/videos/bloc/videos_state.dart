part of 'videos_bloc.dart';

@immutable
abstract class VideosState {}

abstract class VideosActionState extends VideosState {}

class VideosInitial extends VideosState {}

class VideosLoadingState extends VideosState {}

class VideosErrorState extends VideosState {}

class VideosFetchedState extends VideosState {
  final List<VideoDataUiModel> videos;
  VideosFetchedState({
    required this.videos,
  });
}
