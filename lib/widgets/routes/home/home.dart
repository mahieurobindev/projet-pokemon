import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemonflutter/providers/home.state.dart';
import 'package:pokemonflutter/widgets/routes/home/local_widgets/home_appbar.dart';
import 'package:pokemonflutter/widgets/routes/home/local_widgets/home_bottombar.dart';

class HomeRoute extends ConsumerWidget {
  HomeRoute({ Key? key }) : super(key: key);

  final tabs = [Text('1'), Text('2'), Text('3')];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: tabs[ref.watch(homeStateProvider).currentTab],
      bottomNavigationBar: HomeBottomBar(),
    );
  }
}