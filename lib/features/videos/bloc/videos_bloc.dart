import 'dart:async';
import 'dart:developer';

import 'package:akshit_madan/features/videos/models/videos_data_ui_model.dart';
import 'package:akshit_madan/features/videos/repos/videos_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'videos_event.dart';
part 'videos_state.dart';

class VideosBloc extends Bloc<VideosEvent, VideosState> {
  final VideosRepo videosRepo;
  VideosBloc(this.videosRepo) : super(VideosInitial()) {
    on<VideosFetchEvent>(videosFetchEvent);
  }

  FutureOr<void> videosFetchEvent(
      VideosFetchEvent event, Emitter<VideosState> emit) async {
    emit(VideosLoadingState());
    try {
      List<VideoDataUiModel> videos = await videosRepo.fetchVideos();

      emit(VideosFetchedState(videos: videos));
    } catch (e) {
      log(e.toString());
      emit(VideosErrorState());
    }
  }
}
