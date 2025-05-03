import 'package:dartz/dartz.dart';

extension Result<L, R> on Either<L, R> {
  T when<T>({
    required T Function(L left) onError,
    required T Function(R right) onSuccess,
  }) {
    return fold(
      (l) => onError(l),
      (r) => onSuccess(r),
    );
  }
}
