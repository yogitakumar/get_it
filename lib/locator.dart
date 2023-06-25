import 'package:get_it/get_it.dart';
import 'package:get_it_demo/domain/posts_controller.dart';
import 'package:get_it_demo/repo/posts_repo.dart';

final GetIt serviceLocator = GetIt.instance;

void setupLocator() {
  serviceLocator.registerLazySingleton<PostsRepo>(
        () => PostsRepo(),
  );
  serviceLocator.registerLazySingleton<PostsDomainController>(
        () => PostsDomainController(),
  );
}