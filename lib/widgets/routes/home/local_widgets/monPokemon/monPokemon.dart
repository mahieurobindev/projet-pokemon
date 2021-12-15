import 'dart:html';

import 'package:flutter/material.dart';

class MonPokemon extends StatelessWidget {
  const MonPokemon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: const Text(
        'Mon Pokebite',
      style:TextStyle(fontFamily: 'Montserrat', fontSize:54, color: (Colors.white)),
      
      textAlign: TextAlign.center,
      
    ),
    color: Colors.blue[600]);
    
  }
}