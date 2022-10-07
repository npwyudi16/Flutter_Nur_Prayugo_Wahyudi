import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:no1_flutter_bloc/models/contact_model.dart';

part 'contact_event.dart';
part 'contact_state.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  ContactBloc() : super(ContactInitial(contact: List.empty())) {
    on<ContactEvent>((event, emit) async {
      emit(LoadingContactState(contact: state.contact));
      await Future.delayed(const Duration(seconds: 1));
      if (event is AddContact) {
        emit(LoadedContactState(contact: [...state.contact, event.contact]));
      }

      if (event is DeleteContact) {
        emit(LoadedContactState(
            contact: [...state.contact]..remove(event.contact)));
      }

      if (event is FailedContact) {
        emit(FailedState(contact: state.contact));
      }

      emit(LoadedContactState(contact: state.contact));
    });
  }
}
