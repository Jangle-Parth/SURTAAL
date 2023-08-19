import 'package:surtaal/models/Categorys.dart';

class Categoryoperations {
  Categoryoperations._() {}
  static List<Categorys> getCategories() {
    return <Categorys>[
      Categorys('Parth\'s Playlist',
          'https://media.licdn.com/dms/image/D4D03AQHMUZkYGcDMyA/profile-displayphoto-shrink_400_400/0/1690646977071?e=1697673600&v=beta&t=8kcsZQm8XSqFkMbeaRFatiNO-MpOVqq8Ue6MYKsvZtQ'),
      Categorys('Top Songs',
          'https://is1-ssl.mzstatic.com/image/thumb/Purple126/v4/44/17/3c/44173c67-fc77-2bc3-a54e-c275c89f71bd/AppIcon-0-1x_U007emarketing-0-7-0-85-220.png/256x256bb.jpg')
    ];
  }
}
