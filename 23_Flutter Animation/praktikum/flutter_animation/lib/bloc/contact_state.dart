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

class ContactLoading extends ContactState {
  const ContactLoading({required super.contact});
}

class ContactAdded extends ContactState {
  const ContactAdded({required super.contact});
}

class ContactFailed extends ContactState {
  const ContactFailed({required super.contact});
}
