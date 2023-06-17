import 'package:akshit_madan/features/videos/bloc/videos_bloc.dart';
import 'package:akshit_madan/project/di/app_dependency_injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

class VideosDesktopWidget extends StatefulWidget {
  const VideosDesktopWidget({super.key});

  @override
  State<VideosDesktopWidget> createState() => _VideosDesktopWidgetState();
}

class _VideosDesktopWidgetState extends State<VideosDesktopWidget> {
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
            style: TextStyle(fontSize: 40),
          ),
          const SizedBox(height: 40),
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
                      children:
                          List.generate(successState.videos.length, (index) {
                        return videoContainer(
                            successState.videos[index].thumbnailUrl,
                            successState.videos[index].title,
                            successState.videos[index].videoId);
                      }));
                default:
                  return const CircularProgressIndicator();
              }
            },
          )
        ]));
  }

  Widget videoContainer(String imageUrl, String title, String videoId) {
    return InkWell(
      onTap: () {
        launchUrl(Uri.parse('https://youtu.be/$videoId'));
      },
      child: Container(
        margin: const EdgeInsets.all(8),
        width: 338,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 8),
              width: 338,
              height: 190,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                      image: NetworkImage(imageUrl), fit: BoxFit.cover)),
            ),
            Text(title)
          ],
        ),
      ),
    );
  }
}
