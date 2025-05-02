import 'dart:async';
import 'dart:developer';

import 'package:chopper/chopper.dart';
import 'package:flutter/foundation.dart';

typedef JsonFactory<T> = T Function(Map<String, dynamic> json);

class CustomJsonConverter<T> extends JsonConverter {

  const CustomJsonConverter(this.jsonDecoderMappings);
  final Map<Type, JsonFactory<T>> jsonDecoderMappings;

  @override
  Future<Response<ResultType>> convertResponse<ResultType, Item>(
      Response<dynamic> response,
      ) async {
    final jsonResponse = await super.convertResponse<Object, Item>(response);
    final body = jsonResponse.body;
    if (body is Map<String, dynamic>) {
      if (kDebugMode) {
        print("RESPONSE BODY____   $body");
      }
      return jsonResponse.copyWith<ResultType>(
        body: _decode<ResultType>(body),
      );
    } else {
      return jsonResponse as Response<ResultType>;
    }
  }

  R _decode<R>(Map<String, dynamic> json) {
    final factory = jsonDecoderMappings[R];
    if (factory == null) {
      log('No factory found for type $T', name: 'JsonSerializableConverter');
      throw Exception('No JSON factory registered for type $T');
    }
    return factory(json) as R;
  }
}
