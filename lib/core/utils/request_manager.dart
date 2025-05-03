import 'package:chopper/chopper.dart';
import 'package:dartz/dartz.dart';

import '../../core/exceptions/exceptions.dart';

abstract class RequestManager {
  static Future<Either<Exception, T>> request<T, ResponseType>(
      {required Future<Response<ResponseType?>> Function() onRequest,
        required T Function(ResponseType) onConvert}) async {
    try {
      final response = await onRequest();
      if (response.isSuccessful) {
        if (response.body == null) {
          return Left(ApiException(message: 'Body is null'));
        } else {
          return Right(onConvert(response.body as ResponseType));
        }
      } else {
        return Left(
            ApiException(statusCode: response.statusCode, message: response.error.toString()));
      }
    } catch (e) {
      return Left(ApiException(message: e.toString()));
    }
  }
  static Future<Either<Exception, T>> requestLocal<T, ResponseType>(
      {required Future<ResponseType?> Function() onRequest,
        required T Function(ResponseType) onConvert}) async {
    try {
      final response = await onRequest();
      return Right(onConvert(response as ResponseType));
    } catch (e, stackTrace) {
      return Left(LocalException(message: e.toString(), stacktrace: stackTrace));
    }
  }
}
