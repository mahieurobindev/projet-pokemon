import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemonflutter/models/pokemon.dart';
import 'package:pokemonflutter/providers/dio.dart';

class Boutique extends ConsumerWidget {
  const Boutique({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final Dio dio =ref.read(dioProvider);
    final Future<Response> future = dio.get("/pokemon/10");

    future.then((Response value){
      print (value.toString());
      GetPokemonByIdResponse pokemon  = GetPokemonByIdResponse.fromJson(jsonDecode(value.toString()));
      print(pokemon.name);
    })
    .catchError((onError){
      print("impossible de récupérer le pokemon");
    });

    return Container(
      child: const Text("pokemon.name"),
    );
  }
}
