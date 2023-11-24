import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircolAvatar {
  final ImageProvider<Object> backgroundImage;
  final Color color;
  final Text text;
  const CircolAvatar(this.backgroundImage, this.color, this.text);
  static List<CircolAvatar> listW = <CircolAvatar>[
    const CircolAvatar(AssetImage("assets/images/images.png"), Colors.black45, Text("O'zim")),
    const CircolAvatar(AssetImage("assets/images/download1.jpeg"), Colors.greenAccent, Text("Aslidin\nMussur")),
    const CircolAvatar(AssetImage("assets/images/download.png"), Colors.white, Text("Soibpov\n  Jony")),
    const CircolAvatar(AssetImage("assets/images/download1.jpeg"), Colors.yellow, Text("Aminjonov\n islomjon")),
    CircolAvatar(const AssetImage("assets/images/download.png"), Colors.blueAccent.shade400, const Text("Kikmatullo\nRaxmonjonov")),
    const CircolAvatar(AssetImage("assets/images/download1.jpeg"), Colors.white, Text("Norqobilov\n Alpomish")),
    const CircolAvatar(AssetImage("assets/images/download.png"), Colors.green, Text("Salimov\n Davlat")),
    const CircolAvatar(AssetImage("assets/images/download1.jpeg",), Colors.green, Text("Shaxzod\nNosirof")),
  ];
  
}
