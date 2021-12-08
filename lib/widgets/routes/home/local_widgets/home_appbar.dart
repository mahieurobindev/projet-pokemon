import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemonflutter/providers/App.state.dart';

class HomeAppBar extends ConsumerWidget implements PreferredSizeWidget{
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
      return  Container(
        color: Colors.red,
        child: Row(
            children: <Widget>[
              const Text('Pokeymoney : ',
              ),
              Text(ref.watch(appStateProvider).pokemoney.toString()),
            ],
          ),
      )
      ;
  }

  @override
  Size get preferredSize => const Size.fromHeight(64);
}
