import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemonflutter/models/get_list_pokemon.dart';
import 'package:pokemonflutter/models/result.dart';
import 'package:pokemonflutter/providers/list_pokemon.provider.dart';

import '../../../../../providers/App.state.dart';

class Boutique extends ConsumerWidget {
  const Boutique({
    Key? key,
  }) : super(key: key);

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
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _data(AsyncData<GetListPokemonResponse?> data) {
    final GetListPokemonResponse? value = data.value;

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Wrap(
            children: value!.results!.map((e) => _OnePokemon(pokemon: e)).toList(),
          ),
        ),
      ),
    );
  }
}

class _OnePokemon extends ConsumerWidget {
  const _OnePokemon({Key? key, required this.pokemon}) : super(key: key);

  final Result pokemon;

  @override
  Widget build(BuildContext context, WidgetRef ref ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        //-----
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[200],
        ),
        width: MediaQuery.of(context).size.width * 0.20,
        height: MediaQuery.of(context).size.width * 0.25,
        child: Column(
          children: [
            Image.asset('images/pikachu.png'),
            Expanded(
              child: Column(
                children: [
                  Expanded(child: Text(pokemon.name!)),
                  Expanded(child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Color.fromRGBO(0, 160, 227, 1))),
                onPressed: () {ref.read(appStateProvider.notifier).acheter();},
                padding: EdgeInsets.all(10.0),
                color: Color.fromRGBO(0, 160, 227, 1),
                textColor: Colors.white,
                child: Text("Acheter",
                    style: TextStyle(fontSize: 15)),
              ),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
