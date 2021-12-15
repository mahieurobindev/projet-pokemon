import 'package:flutter/material.dart';

class MonPokemon extends StatelessWidget {
  const MonPokemon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            //conteneur mon pokémon
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            //----- 
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[200],
            ),
            width: MediaQuery.of(context).size.width * 0.50,
            height: MediaQuery.of(context).size.width * 0.75,
           
            child: Column(
              children: [
                Expanded(child: Image.asset('images/icon.png')),
                Expanded(
                  child: Column(
                    children: const [
                      Expanded(child: Text('ID')),
                      Expanded(child: Text('NOM')),
                      Expanded(child: Text('TYPE')),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        color: Colors.white);
  }
}
