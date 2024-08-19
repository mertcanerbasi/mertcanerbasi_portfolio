import 'package:flutter/material.dart';
import 'package:mertcanerbasi/models/slide.dart';

class SlideController extends ChangeNotifier {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  void increaseIndex(int index) {
    if (index >= slides.length - 1) {
      _currentIndex = 0;
      notifyListeners();
      return;
    } else {
      _currentIndex += 1;

      notifyListeners();
      return;
    }
  }

  void decreaseIndex(int index) {
    if (index <= 0) return;
    _currentIndex -= 1;

    notifyListeners();
  }

  final slides = [
    Slide(
      image: 'images/welcome_bg1.jpg',
      title: 'Mertcan Erbaşı',
      subtitle:
          "Experienced Flutter | iOS Developer with 5 Years of Expertise, Over a Dozen Apps Launched, and a Strong Focus on UI/UX and Pixel-Perfect Design",
    ),
    Slide(
      image: 'images/welcome_bg2.jpg',
      title: 'Mobile App Developer',
      subtitle:
          "Creating innovative mobile experiences with a deep understanding of the Flutter framework and modern iOS development.",
    ),
    Slide(
      image: 'images/welcome_bg3.jpg',
      title: 'UI/UX Enthusiast',
      subtitle:
          "Committed to delivering pixel-perfect designs and seamless user experiences across all devices.",
    ),
  ];
}
