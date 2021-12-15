import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemonflutter/providers/App.state.dart';

class HomeAppBar extends ConsumerWidget implements PreferredSizeWidget{
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
      return  Container(
        height: 80,
        color: Color.fromARGB(255, 32, 122, 206),
        child: Row(
            children: <Widget>[
              const Text('Pokeymoney : ',
              style:TextStyle(fontFamily: 'Montserrat', fontSize:20, color: (Colors.white)),
              ),
              Text(ref.watch(appStateProvider).pokemoney.toString(),
              style:TextStyle(fontFamily: 'Montserrat', fontSize:20, color: (Colors.white)),
              ),

            ],
          ),
      )
      ;
  }

  @override
  Size get preferredSize => const Size.fromHeight(64);
}
