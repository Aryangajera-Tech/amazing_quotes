import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Imgslider extends StatefulWidget {
  @override
  State<Imgslider> createState() => _ImgsliderState();
}

class _ImgsliderState extends State<Imgslider> {
  List sliderimg = [
    "https://img.freepik.com/free-photo/nature-sky-photo-with-motivative-quotes_53876-124524.jpg?w=1060&t=st=1661628678~exp=1661629278~hmac=f1cc3450fae0e82f416d5556230bc85925901fb0cec46a856ebbacb7f00f136e"
        "https://img.freepik.com/free-photo/motivational-text-yellow-background_23-2148689414.jpg?w=1060&t=st=1661628698~exp=1661629298~hmac=ef2916c5ea3c30ef1973ca40cee06bc9ccf0aa21d9f14035fcd3dc97b58d35e6",
    "https://img.freepik.com/free-photo/bright-pink-sky-with-adventure-quote_53876-123771.jpg?w=900&t=st=1661630226~exp=1661630826~hmac=30e210c40e10d8fa5286cf2cbea53e01c43975943070f171368e78aa2282792f"
        "https://img.freepik.com/free-photo/let-good-time-rolls-quote-water-wave-background_53876-119780.jpg?w=996&t=st=1661628755~exp=1661629355~hmac=87c45699aba7c19a19ae9a0da55ee28f81fcf81641904d12fc71d57cfeb3ef95",
    "https://img.freepik.com/free-photo/enjoy-moment-things-positive-words-phrase-graphic_53876-138622.jpg?w=1380&t=st=1661628774~exp=1661629374~hmac=73b8b1f2fa81a2ab762b42cf5f2dc7ebc9313fc66dd892338bb39a0b9e5cb2a3",
    "https://img.freepik.com/free-photo/something-green-today-quote-social-media-post_53876-98002.jpg?w=740&t=st=1661630027~exp=1661630627~hmac=432ae8306e49fa2bb474ab41abfa2d09c89da59eda7e48cb72f2e98ef975b27a"
        "https://img.freepik.com/free-photo/negative-mind-will-never-give-you-positive-life-motivation-attitude-graphic-words_53876-124501.jpg?w=996&t=st=1661628789~exp=1661629389~hmac=56b34f4c75e1d6e99e85f5ffd5d0f5406dbaca0d00cc627fcd1e5314bf705a28",
    "https://img.freepik.com/free-photo/landscape-contry-road-travel-destination-rural-concept_53876-147711.jpg?w=1060&t=st=1662873698~exp=1662874298~hmac=ed49427c3ba6d1eaac20f5d16dafc8400375eabbfb56c7b7bcc901722e929ed3",
    "https://img.freepik.com/free-photo/high-angle-vertical-shot-green-leaves-growing-middle-garden_181624-8670.jpg?w=360&t=st=1662873646~exp=1662874246~hmac=b376755fa7fdb3a34ac719c42d4fe2149e4bf479084233d8065226377c5eb24b",
    "https://img.freepik.com/free-photo/beautiful-shot-small-lake-with-wooden-rowboat-focus-breathtaking-clouds-sky_181624-2490.jpg?w=996&t=st=1662873599~exp=1662874199~hmac=71cda21601b0b62b3ff2acb6cd49264a40dc15b758569ebd938bb7383556181d",
    "https://img.freepik.com/free-photo/colorful-abstract-nebula-space-background_53876-111356.jpg?w=996&t=st=1662873511~exp=1662874111~hmac=938ec3a09ace7aca42ba47157379078ff6aa08369606c50e14d141cb3728e12f"
  ];
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return CarouselSlider.builder(
        itemBuilder: (context, index, realIndex) => Container(
              margin: EdgeInsets.only(top: h * 0.013, right: 4, left: 4),
              height: h * 0.28,
              width: w,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.network(
                  sliderimg[index],
                  fit: BoxFit.fill,
                ),
              ),
            ),
        itemCount: sliderimg.length,
        options: CarouselOptions(
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
        ));
  }
}
