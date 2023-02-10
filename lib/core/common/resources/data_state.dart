abstract class DataState<T> {
}

class DataSuccess<T> extends DataState<T>{
  T? data;
  DataSuccess(this.data);
}

class DataFailure<T> extends DataState<T>{
  String errorMessage;
  DataFailure(this.errorMessage);
}