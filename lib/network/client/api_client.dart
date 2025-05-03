// data/services/chopper_client.dart

import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:flutter/foundation.dart';

import '../../data/dto/character_dto.dart';
import '../../network/converter/custom_json_converter.dart';
import '../service/character_service.dart';

class ApiClient {
  factory ApiClient({required String baseUrl}) => ApiClient._internal(baseUrl: baseUrl);

  ApiClient._internal({required String baseUrl}) {
     _client = ChopperClient(
      baseUrl: Uri.parse(baseUrl),
      services: [],
      converter: const CustomJsonConverter({
        CharacterDto: CharacterDto.fromJson,
        CharacterInfoDto: CharacterInfoDto.fromJson,
        CharacterDetailsDto: CharacterDetailsDto.fromJson,
        CharacterLocationDto: CharacterLocationDto.fromJson,
        CharacterOriginDto: CharacterOriginDto.fromJson,
      }),
      interceptors: [
        HttpLoggingInterceptor(),
        CustomLoggingInterceptor(),
        CustomLoggingInterceptor(),
      ],
    );
     _characterService = CharacterService.create(_client);
  }
  late final CharacterService _characterService;
  late final ChopperClient _client;

  CharacterService get characterService => _characterService;
  ChopperClient get client => _client;
}


class CustomLoggingInterceptor implements Interceptor {

  CustomLoggingInterceptor();

  @override
  FutureOr<Response<BodyType>> intercept<BodyType>(Chain<BodyType> chain) async {
    final request = chain.request;
    if (kDebugMode) {
      print('Request: ${request.method} ${request.url}');
      print('Headers: ${request.headers}');
      print('Body: ${request.body}');
    }

    final response = await chain.proceed(request);
    if (kDebugMode) {
      print('Response: ${response.statusCode}');
      print('Response Body: ${response.body}');
    }

    return response;
  }
}
