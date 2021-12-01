// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetPokemonByIdResponse _$PokemonFromJson(
        Map<String, dynamic> json) =>
    GetPokemonByIdResponse(
      json['id'] as int?,
      json['name'] as String?,
      (json['moves'] as List<dynamic>?)
          ?.map((e) => Move.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['weight'] as int?,
    );

Map<String, dynamic> _$PokemonToJson(
        GetPokemonByIdResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'moves': instance.moves,
      'weight': instance.weight,
    };
