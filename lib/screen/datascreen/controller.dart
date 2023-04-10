import 'dart:math';

class DataController {
  String bgimg =
      "https://img.freepik.com/free-photo/abstract-grunge-decorative-relief-navy-blue-stucco-wall-texture-wide-angle-rough-colored-background_1258-28311.jpg?w=1380&t=st=1661623092~exp=1661623692~hmac=f7ca49988a7291902b74ce2981703c43d89d1e7999cacffd32d6267e7b6ba455";
  List image = [
    "https://img.freepik.com/free-photo/abstract-grunge-decorative-relief-navy-blue-stucco-wall-texture-wide-angle-rough-colored-background_1258-28311.jpg?w=1380&t=st=1661623092~exp=1661623692~hmac=f7ca49988a7291902b74ce2981703c43d89d1e7999cacffd32d6267e7b6ba455",
    "https://img.freepik.com/free-photo/blue-smooth-wall-textured-background_53876-106133.jpg?w=996&t=st=1661623172~exp=1661623772~hmac=ba30786625e0b5f7dc25061b7c638488ef94d52e7550713816dce9729b118abf",
    "https://img.freepik.com/free-photo/blue-smoky-art-abstract-background_53876-110800.jpg?w=996&t=st=1661623191~exp=1661623791~hmac=919845bf7d09825b76fe502707cbb5c1b8dd1634bf556920a2b809d4c709dc4b",
    "https://img.freepik.com/free-photo/landscape-tropical-green-forest_181624-30814.jpg?w=996&t=st=1661623281~exp=1661623881~hmac=906ebdb59381b5afe2f843c5d452258176747b108051c69645712d611039d986",
    "https://img.freepik.com/free-photo/selective-focus-shot-plants-with-green-leaves_181624-22023.jpg?w=996&t=st=1661623314~exp=1661623914~hmac=39b07c8c6ee1cf006cafe47947c23bb813c7d8e04c7624ae92138b18eb7a9375",
    "https://img.freepik.com/free-photo/fog-dark-clouds-mountains_1204-503.jpg?w=996&t=st=1661623336~exp=1661623936~hmac=0d2677b4765848024e8da79abb2d997bc2bfb20cd662b5d004a26c65d4fcaac0",
    "https://img.freepik.com/free-photo/breathtaking-shot-sea-dark-purple-sky-filled-with-stars_181624-23013.jpg?w=996&t=st=1661623569~exp=1661624169~hmac=b1f82416db2deefdd7e8578aa559d2e8abf36514af04af3c1d16b96b57fab170",
    "https://img.freepik.com/free-photo/mesmerizing-view-silhouettes-trees-sunset-sky_181624-28704.jpg?w=1060&t=st=1661623582~exp=1661624182~hmac=d6757536c9d36c2da87c5db957af0e1f725922bf59b387d5cdac6278edd4e329",
    "https://img.freepik.com/free-photo/3d-abstract-space-sky-with-stars-nebula_1048-8320.jpg?w=740&t=st=1661623611~exp=1661624211~hmac=01a254aca28970da2ba08ee4bf9c90bea4809aca47c6809cf6e16dac19d86751",
    "https://img.freepik.com/free-photo/starry-sky-mountain-background-nature-remixed-media_53876-128641.jpg?w=996&t=st=1661623642~exp=1661624242~hmac=e1ecbfe3e4c011345458752afbdaa85a2c3c04587198307b92d751b43bce559c",
  ];
  String selectfont = "f1";
  List font = [
    "f1",
    "f2",
    "f3",
    "f4",
    "f5",
    "f6",
    "f7",
    "f8",
    "f9",
    "f10",
    "f11",
    "f12",
    "f13",
    "f14",
    "f15",
  ];
  void changeimg() {
    Random random = Random();
    int index = random.nextInt(image.length);
    String change = image[index];
    bgimg = change;
  }

  void changefont() {
    Random random = Random();
    int index = random.nextInt(font.length);
    String change = font[index];
    selectfont = change;
  }
}
