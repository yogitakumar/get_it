import '../locator.dart';
import '../repo/posts_repo.dart';

class PostsDomainController {
  getNextPost() async {
    return await serviceLocator.get<PostsRepo>().getPost();
  }
}