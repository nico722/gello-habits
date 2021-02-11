import 'package:flutter/material.dart';

class CharacterThumbnail extends StatelessWidget{
  final color;

  CharacterThumbnail({@required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image(image: AssetImage('assets/characters/Base – Purple.png')),
    );
  }
}