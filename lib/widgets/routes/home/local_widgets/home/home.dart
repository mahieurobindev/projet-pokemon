import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemonflutter/providers/App.state.dart';

class Home extends ConsumerWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        body: Center(child: Image.asset('images/pokemon.png')),
        floatingActionButton: Center(child: FloatingActionButton(
        onPressed: (){
          ref.read(appStateProvider.notifier).increment();
        },
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
        ),
        heightFactor : 1,),
    );
  }
}

  