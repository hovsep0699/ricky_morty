import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/exceptions/exceptions.dart';


part 'error_dto.freezed.dart';
part 'error_dto.g.dart';

@freezed
class ErrorDto extends GeneralException with _$ErrorDto {
  const factory ErrorDto(
      {String? message}) = _ErrorDto;

  factory ErrorDto.fromJson(Map<String, dynamic> json) => _$ErrorDtoFromJson(json);
}
