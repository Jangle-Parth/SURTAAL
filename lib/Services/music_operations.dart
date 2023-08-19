import 'package:surtaal/models/music.dart';

class MusicOperations {
  MusicOperations._() {}
  static List<Music> getMusic() {
    return <Music>[
      Music(
          'Lamhey',
          'https://c.saavncdn.com/531/Lamhey-Hindi-2023-20230518153444-500x500.jpg',
          'Singer: Anubha Bajaj'),
      Music(
          'Baaton Baaton Mein',
          'https://c.saavncdn.com/384/Baaton-Baaton-Main-Hindi-2022-20220827053603-500x500.jpg',
          'Singer: Shaswat Sachdev'),
      Music(
          'Choo Lo',
          'https://images.genius.com/1478a886e438f0a746a8b42eacfdbcc4.1000x1000x1.jpg',
          'Singer: The Local Train'),
      Music(
          'Makeba',
          'https://i1.sndcdn.com/artworks-SF1rQsMWm9Ly-0-t500x500.jpg',
          'Singer: Jain'),
      Music(
          'Khalasi',
          'https://images.genius.com/e4d57dd111125f3d7163b67fdd16f7b5.1000x1000x1.png',
          'Singer: Aditya Gadhvi'),
      Music(
          'Rang Morla',
          'https://static.toiimg.com/photo/msid-97311065/97311065.jpg',
          'Singer : Aditya Gadhvi,Priya Saraiya'),
    ];
  }
}
