import 'dart:html';

import 'package:flutter/material.dart';

class MonPokemon extends StatelessWidget {
  const MonPokemon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
          //conteneur mon pokémon
          child: Container(
            height: 300,
            width: 500,
             color: Colors.grey
             ),
        color: Colors.blue[600]);
  }
}