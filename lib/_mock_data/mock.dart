import 'package:clone_ig/models/post.dart';
import 'package:clone_ig/models/story.dart';
import 'package:clone_ig/models/user.dart';

User currentUser =
    User('id', 'heyfins_', 'https://imgx.gridoto.com/crop/0x0:0x0/700x465/photo/2021/06/14/08e88dbef066602f1333a2a20eb9d516-20210614122736.jpg');

final List<Story> stories =[
  Story('id', currentUser),
  Story('id', currentUser),
  Story('id', currentUser),
  Story('id', currentUser),
  Story('id', currentUser),
  Story('id', currentUser),
];

final List<Post> posts = [
  Post('id', currentUser, 'https://imgx.gridoto.com/crop/0x0:0x0/700x465/photo/2021/06/14/08e88dbef066602f1333a2a20eb9d516-20210614122736.jpg', 'title', 'Jakarta, Indonesia', 'Nissan Skyline R34', '1 menit yang lalu', '112k', '1240', true, true),
  Post('id1', currentUser, 'https://mlzqdh7ti9ev.i.optimole.com/owWEjBA-RbIj0L12/w:800/h:640/q:75/https://nmaa.co.id/wp-content/uploads/2022/09/Nissan-Silvia-S15-Ziko-update-with-Motul-Max-Decal-Livery-1-e1664004560272.jpg', 'title1', 'Jakarta Utara, Indonesia', 'Nissan S15 2JZ', '56 menit yang lalu', '110k', '1220', true, true),
  Post('id2', currentUser, 'http://iamautomodified.com/wp-content/uploads/2020/04/modifikasi-toyota-ft86-tuner.jpg', 'title2', 'Pati, Jawa Tengah', 'Toyota Gt86 Body Kit Karma', '24 detik yang lalu', '12k', '164', true, true),
  Post('id3', currentUser, 'https://asset.kompas.com/crops/HTMoXfCQRZMI2uNvhiK-Tt57o2U=/4x0:1426x948/750x500/data/photo/2022/06/09/62a1ea0492cab.jpeg', 'title3', 'Jepara, Indonesia', 'Toyota Kijang Innova Reborn', '21 jam yang lalu', '112k', '454', true, true),
  Post('id4', currentUser, 'https://mlzqdh7ti9ev.i.optimole.com/owWEjBA-0yvqgbpy/w:300/h:269/q:75/https://nmaa.co.id/wp-content/uploads/2022/07/Toyota-FT86-Karma-Body-Kit-14-road-to-imx-2022-makassar-4-e1658569575883.jpeg', 'title4', 'Semarang, Indonesia', 'Toyota Gt86 Body Kit Karma v2', '4 minggu yang lalu', '110k', '994', true, true),
  Post('id5', currentUser, 'https://i1.wp.com/thegaspol.com/wp-content/uploads/2021/07/Modz-Battle-IMX-2021-5.jpeg?resize=759%2C500', 'title5', 'Jakarta Selatan, Indonesia', 'Silvia S15 standart', '5 tahun yang lalu', '223', '884', true, true),

];