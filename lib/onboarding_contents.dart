import 'package:flutter/material.dart';

class OnboardingContents {
  final String image;
  final String desc;
  OnboardingContents(
      { required this.image, required this.desc});
}

List<OnboardingContents> contents = [
  OnboardingContents(
    image: "assets/images/image1.png",
    desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
        "Nulla turpis sapien, dignissim vel dolor aliquet, dictum egestas lectus. ",
  ),
  OnboardingContents(
    image: "assets/images/image2.png",
    desc:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
        "Nulla turpis sapien, dignissim vel dolor aliquet, dictum egestas lectus. ",
  ),
  OnboardingContents(
    image: "assets/images/image3.png",
    desc:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla turpis"
        " sapien, dignissim vel dolor aliquet, dictum egestas lectus. ",
  ),
];