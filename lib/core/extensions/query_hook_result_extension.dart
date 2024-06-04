import 'package:graphql_flutter/graphql_flutter.dart';

extension QueryHookResultExt<T> on QueryHookResult<T> {
  R when<R>({
    required R Function(T data) data,
    required R Function(Exception error) error,
    required R Function() loading,
  }) {
    if (result.isLoading) {
      return loading();
    }

    final parsedData = result.parsedData;
    final exception = result.exception;

    if (exception != null || parsedData == null) {
      return error(exception ?? Exception('Data is null'));
    }

    return data(parsedData);
  }
}
