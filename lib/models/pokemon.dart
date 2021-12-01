

import 'package:json_annotation/json_annotation.dart';
import 'move.dart';

part 'pokemon.g.dart';

@JsonSerializable()
class GetPokemonByIdResponse{

final int? id;
final String? name;
final List<Move>? moves;
final int? weight;



GetPokemonByIdResponse(this.id,this.name, this.moves, this.weight);

factory GetPokemonByIdResponse.fromJson(Map<String,dynamic> json) =>_$PokemonFromJson(json);

Map<String, dynamic> toJson() => _$PokemonToJson(this);

}
