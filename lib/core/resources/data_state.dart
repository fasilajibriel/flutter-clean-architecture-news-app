import 'package:dio/dio.dart';

abstract class DataState<T> {
  final T? data;
  final DioException? dioException;

  const DataState({this.data, this.dioException});
}

class DataSuccess<T> extends DataState {
  const DataSuccess(T data) : super(data: data);
}

class DataFailed<T> extends DataState {
  const DataFailed(DioException dioException)
      : super(dioException: dioException);
}
