import 'package:akshit_madan/core/api_layer/clients/videos_api_client.dart';
import 'package:akshit_madan/core/api_services/videos_api_service/videos_api_service.dart';
import 'package:akshit_madan/features/videos/bloc/videos_bloc.dart';
import 'package:akshit_madan/features/videos/repos/videos_repo.dart';
import 'package:get_it/get_it.dart';

class AppDependencyInjection {
  static final getIt = GetIt.instance;

  static void initDiServices() {
    initDiApiServices();
    initDiApiClients();
    initDiBlocs();
    initRepos();
  }

  static void initDiApiClients() {
    getIt.registerLazySingleton<VideosApiClient>(() => VideosApiClient());
  }

  static void initDiBlocs() {
    getIt.registerLazySingleton<VideosBloc>(
        () => VideosBloc(getIt.get<VideosRepo>()));
  }

  static void initRepos() {
    getIt.registerLazySingleton<VideosRepo>(
        () => VideosRepo(videosApiService: getIt.get<VideosApiService>()));
  }

  static void initDiApiServices() {
    getIt.registerLazySingleton<VideosApiService>(
        () => VideosApiService(videosApiClient: getIt.get<VideosApiClient>()));
  }
}
