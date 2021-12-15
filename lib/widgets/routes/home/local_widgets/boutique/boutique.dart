import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemonflutter/models/get_list_pokemon.dart';
import 'package:pokemonflutter/models/result.dart';
import 'package:pokemonflutter/providers/dio.dart';
import 'package:pokemonflutter/providers/list_pokemon.provider.dart';

class Boutique extends ConsumerWidget {
  const Boutique({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref
        .watch(listPokemonProvider)
        .map(data: _data, error: _error, loading: _loading);
  }

  Widget _error(AsyncError<GetListPokemonResponse?> error) {
    return Text('Impossible de charger les pokemons');
  }

  Widget _loading(AsyncLoading<GetListPokemonResponse?> loading) {
    return CircularProgressIndicator();
  }

  Widget _data(AsyncData<GetListPokemonResponse?> data) {
    final GetListPokemonResponse? value = data.value;

    return Wrap(
      children: value!.results!.map((e) => _OnePokemon(pokemon: e)).toList(),
    );
  }
}

class _OnePokemon extends StatelessWidget {
  const _OnePokemon({Key? key, required this.pokemon}) : super(key: key);

  final Result pokemon;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
