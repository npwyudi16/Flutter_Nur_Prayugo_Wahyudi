part of 'contact_bloc.dart';

@immutable
abstract class ContactState extends Equatable {
  final List<Contact> contact;
  const ContactState({required this.contact});
  @override
  List<Object> get props => [contact];
}

class ContactInitial extends ContactState {
  const ContactInitial({required super.contact});
}

class LoadingContactState extends ContactState {
  const LoadingContactState({required super.contact});
}

class LoadedContactState extends ContactState {
  const LoadedContactState({required super.contact});
}

class FailedState extends ContactState {
  const FailedState({required super.contact});
}
