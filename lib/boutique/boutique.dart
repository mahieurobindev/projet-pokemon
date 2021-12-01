import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemonflutter/providers/dio.dart';

class Boutique extends ConsumerWidget {
  const Boutique({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Dio dio = ref.read(dioProvider);
    final Future<Response> future = dio.get("https://pokeapi.co/api/v2/");

    future
        .then((Response value) => {print(value.statusCode)})
        .catchError((onError) {
      print("impossible de récupérer le pokemon");
    });
    return Container(
      child: const Text('Boutique'),
    );
  }
}
