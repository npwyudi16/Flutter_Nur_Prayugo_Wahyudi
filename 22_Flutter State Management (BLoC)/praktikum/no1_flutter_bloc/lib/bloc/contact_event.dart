part of 'contact_bloc.dart';

@immutable
abstract class ContactEvent extends Equatable {
  @override
  List<Object> get props => List.empty();
}

class AddContact extends ContactEvent {
  final Contact contact;
  AddContact({required this.contact});
}

class DeleteContact extends ContactEvent {
  final Contact contact;
  DeleteContact({required this.contact});
}

class FailedContact extends ContactEvent {}
