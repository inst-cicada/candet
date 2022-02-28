import 'package:candet/pages/breast-cancer-1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:candet/pages/lung-cancer-1.dart';

//Contains the resources for each card

//first class
class operations{
  final int position;
  final String name;
  final String iconImage;
  final String description;
  final func;

  operations(
      this.position, {
        this.name,
        this.iconImage,
        this.description,
        this.func,
      });
}

//First List for First.dart

List<operations> menu=[
  operations(1,
      name:"Breast\nCancer",
      iconImage: "assets/breast-cancer.png",
      description: "Detect Breast Cancer \nfrom Mammograms ",
      func: breImgPick(),
  ),
  operations(2,
      name:"Lung \nCancer",
      iconImage:"assets/lung-cancer.png",
      description: "Detect Lung Cancer in \nfew steps.",
      func: lungCancer(),
  ),
];

