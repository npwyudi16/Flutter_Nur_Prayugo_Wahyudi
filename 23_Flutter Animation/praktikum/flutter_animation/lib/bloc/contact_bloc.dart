import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation/models/contact.dart';
import 'package:meta/meta.dart';

part 'contact_event.dart';
part 'contact_state.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  ContactBloc() : super(ContactInitial(contact: List.empty())) {
    on<ContactEvent>((event, emit) async {
      emit(ContactLoading(contact: state.contact));
      await Future.delayed(const Duration(seconds: 1));
      if (event is AddContact) {
        emit(ContactAdded(contact: [...state.contact, event.contact]));
      }

      if (event is DeleteContact) {
        emit(ContactAdded(contact: [...state.contact]..remove(event.contact)));
      }

      if (event is ContactFailed) {
        emit(ContactFailed(contact: state.contact));
      }

      emit(ContactAdded(contact: state.contact));
    });
  }
}
