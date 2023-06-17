import 'package:akshit_madan/design/utils/app_colors.dart';
import 'package:akshit_madan/features/videos/bloc/videos_bloc.dart';
import 'package:akshit_madan/project/di/app_dependency_injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

class VideosMobileWidget extends StatefulWidget {
  const VideosMobileWidget({super.key});

  @override
  State<VideosMobileWidget> createState() => _VideosMobileWidgetState();
}

class _VideosMobileWidgetState extends State<VideosMobileWidget> {
  final VideosBloc videosBloc = AppDependencyInjection.getIt.get();

  @override
  void initState() {
    videosBloc.add(VideosFetchEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 40),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            'Latest Videos',
            style: TextStyle(fontSize: 24),
          ),
          const SizedBox(height: 20),
          BlocConsumer<VideosBloc, VideosState>(
            bloc: videosBloc,
            listener: (context, state) {},
            buildWhen: (previous, current) => current is! VideosActionState,
            listenWhen: (previous, current) => current is VideosActionState,
            builder: (context, state) {
              switch (state.runtimeType) {
                case VideosFetchedState:
                  final successState = state as VideosFetchedState;

                  return Wrap(
                      direction: Axis.horizontal,
                      children: List.generate(
                          successState.videos.length > 5
                              ? 5
                              : successState.videos.length, (index) {
                        return videoContainer(
                            successState.videos[index].thumbnailUrl,
                            successState.videos[index].title,
                            successState.videos[index].videoId);
                      }));
                default:
                  return Center(
                    child: CircularProgressIndicator(
                      color: AppColors.purple,
                    ),
                  );
              }
            },
          )
        ]));
  }

  Widget videoContainer(String imageUrl, String title, videoId) {
    return InkWell(
      onTap: () {
        launchUrl(Uri.parse('https://youtu.be/$videoId'));
      },
      child: Container(
        margin: const EdgeInsets.all(8),
        // width: 320,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 16 / 9.5,
              child: Container(
                margin: const EdgeInsets.only(bottom: 8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                        image: NetworkImage(imageUrl), fit: BoxFit.cover)),
              ),
            ),
            Text(title)
          ],
        ),
      ),
    );
  }
}
