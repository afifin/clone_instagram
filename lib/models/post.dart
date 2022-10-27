import 'user.dart';

class Post {
  final String id;
  final User postedBy;
  final String ImageUrl;
  final String title;
  final String location;
  final String caption;
  final String postedTimeAgo;
  final String totalLikes;
  final String totalComments;
  final bool isLiked;
  final bool isBookmarked;

  Post(
      this.id,
      this.postedBy,
      this.ImageUrl,
      this.title,
      this.location,
      this.caption,
      this.postedTimeAgo,
      this.totalLikes,
      this.totalComments,
      this.isLiked,
      this.isBookmarked);
}
