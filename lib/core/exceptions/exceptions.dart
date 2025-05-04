import '../../l10n/localizations_utils.dart';


class GeneralException implements Exception {
  GeneralException({this.message = ''});

  final String? message;

  @override
  String toString() {
    return 'message: $message';
  }
}

class ApiException implements GeneralException {
  ApiException({this.statusCode = 500, this.message = '', this.error});

  @override
  final String message;

  final int statusCode;

  final Object? error;

  @override
  String toString() {
    return 'status: $statusCode, message: $message, error: $error';
  }
}

class InternalServerException extends ApiException {
  InternalServerException()
      : super(message: 'Error while communicating to the server');
}

class BadGateWayException extends ApiException {
  BadGateWayException() : super(message: appLocalizations.serverSideErrorMessage);
}

class BadRequestException extends ApiException {
  BadRequestException({String? message})
      : super(message: message ?? appLocalizations.invalidRequestErrorMessage);
}

class UnauthorizedException extends ApiException {
  UnauthorizedException() : super(message: appLocalizations.incorrectCredentialsErrorMessage);
}

class ConflictException extends ApiException {
  ConflictException() : super(message: appLocalizations.conflictErrorMessage);
}

class ForbiddenException extends ApiException {
  ForbiddenException() : super(message: appLocalizations.requestAccessErrorMessage);
}

class NotFoundException extends ApiException {
  NotFoundException([String? message])
      : super(message: message ?? appLocalizations.resourceErrorMessage);
}

class InvalidException extends ApiException {
  InvalidException({required int statusCode, String message = ''})
      : super(
      message: appLocalizations.responseFailedErrorMessage(statusCode, message));
}

class BackendException implements Exception {
  BackendException(this.message);
  final dynamic message;
}

class ResponseEmptyException extends ApiException {
  ResponseEmptyException() : super(message: appLocalizations.nullResponseMessage);
}

class ValidationException extends GeneralException {
  ValidationException({String? message})
      : super(message: message ?? appLocalizations.validationErrorMessage);
}

class PermissionDeniedException extends ApiException {
  PermissionDeniedException({String? message})
      : super(message: message ?? appLocalizations.permissionErrorMessage);
}

class LocalException extends GeneralException {
  LocalException({String? message, StackTrace? stacktrace})
      : stackTrace = stacktrace, super(message: message ?? appLocalizations.permissionErrorMessage);
  StackTrace? stackTrace;
}
