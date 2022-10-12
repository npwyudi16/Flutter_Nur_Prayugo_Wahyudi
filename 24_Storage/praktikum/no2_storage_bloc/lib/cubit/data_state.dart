part of 'data_cubit.dart';

@immutable
abstract class DataState {}

class DataInitial extends DataState {}

class DataLoading extends DataState {}

class DataLogin extends DataState {}

class DataRead extends DataState {}

//class DataSave extends DataState {}

// class DataSuccess extends DataState {
//   final DataModel dataModel;

//   DataSuccess(this.dataModel);
// }

// class DataError extends DataState {
//   final String error;

//   DataError(this.error);
// }

class DataDeleted extends DataState {}
