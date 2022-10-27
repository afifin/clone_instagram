import 'package:clone_ig/models/post.dart';
import 'package:clone_ig/models/story.dart';
import 'package:clone_ig/models/user.dart';

User currentUser =
    User('id', 'stackedlist', 'https://picsum.photos/id/1062/400/400');

final List<Story> stories =[
  Story('id', currentUser),
  Story('id', currentUser),
  Story('id', currentUser),
  Story('id', currentUser),
  Story('id', currentUser),
  Story('id', currentUser),
];

final List<Post> posts = [
  Post('id', currentUser, 'https://picsum.photos/id/1062/400/400', 'title', 'New York, USA', 'caption', 'a few seconds ago', '112', '124', true, true),
  Post('id1', currentUser, 'https://picsum.photos/id/1063/400/400', 'title1', 'Toronto, USA', 'caption caption', '4 seconds ago', '11', '121', true, true),
  Post('id2', currentUser, 'https://picsum.photos/id/1064/400/400', 'title2', 'Paris, USA', 'caption caption caption', '24 seconds ago', '1k', '164', true, true),
  Post('id3', currentUser, 'https://picsum.photos/id/1065/400/400', 'title3', 'Sydney, USA', 'caption caption caption caption', '1 minutes ago', '112k', '454', true, true),
  Post('id4', currentUser, 'https://picsum.photos/id/1066/400/400', 'title4', 'Auckland, USA', 'caption 4', '1 hours ago', '110', '994', true, true),
  Post('id5', currentUser, 'https://picsum.photos/id/1067/400/400', 'title5', 'Las vegas, USA', 'caption 5', '5 weeks ago', '223', '884', true, true),

];