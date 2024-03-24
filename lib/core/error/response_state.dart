abstract class ResponseState<T> {
  final T? data;
  final String? error;

  ResponseState({this.data, this.error});
}

class ResponseSuccess<T> extends ResponseState<T> {
  ResponseSuccess(T data) : super(data: data);
}

class ResponseFailed<T> extends ResponseState<T> {
  ResponseFailed(String error): super(error: error);
}