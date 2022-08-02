abstract class AppState {}

class StartAppState implements AppState {}

class LoadingAppState implements AppState {}

class DataAppState<T> implements AppState {
  final T data;

  DataAppState(this.data);
}
