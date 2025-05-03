import 'package:chopper/chopper.dart';
import 'package:dartz/dartz.dart';

import '../../core/exceptions/exceptions.dart';
import '../../l10n/localizations_utils.dart';

abstract class RequestManager {
  static Future<Either<Exception, T?>> request<T, ResponseType>({
    required Future<Response<ResponseType?>> Function() onRequest,
    bool Function(Response<ResponseType?> response)? onErrorHandle,
    required T Function(ResponseType) onConvert,
  }) async {
    try {
      final response = await onRequest();
      if (response.isSuccessful) {
        if (response.body == null) {
          return Left(ApiException(message: 'Body is null'));
        } else {
          return Right(onConvert(response.body as ResponseType));
        }
      } else {
        final hasError = onErrorHandle?.call(response) ?? true;
        if (hasError) {
          return Left(
            ApiException(
              statusCode: response.statusCode,
              error: response.error,
              message: response.error?.toString() ?? appLocalizations.unknownErrorMessage,
            ),
          );
        }
        return const Right(null);
      }
    } catch (e, trace) {
      return Left(LocalException(message: e.toString(), stacktrace: trace));
    }
  }

  static Future<Either<Exception, T>> requestLocal<T, ResponseType>({
    required Future<ResponseType?> Function() onRequest,
    required T Function(ResponseType?) onConvert,
  }) async {
    try {
      final response = await onRequest();
      return Right(onConvert(response));
    } catch (e, stackTrace) {
      return Left(LocalException(message: e.toString(), stacktrace: stackTrace));
    }
  }
}
