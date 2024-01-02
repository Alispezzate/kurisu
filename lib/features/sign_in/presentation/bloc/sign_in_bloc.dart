import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:async';

import '../../data/repositories/authentication_repository.dart';

part 'sign_in_event.dart';

part 'sign_in_state.dart';

part 'sign_in_bloc.freezed.dart';

/// The SignInBloc
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final AuthenticationRepository authenticationRepository;

  /// Create a new instance of [SignInBloc].
  SignInBloc({required this.authenticationRepository}) : super(const SignInState.performing()) {
    on<PerformSignInEvent>(_onPerform);
  }

  /// Method used to add the [PerformSignInEvent] event
  void perform() => add(const SignInEvent.perform());

  FutureOr<void> _onPerform(
    PerformSignInEvent event,
    Emitter<SignInState> emit,
  ) {
    //TODO: map PerformSignInEvent to SignInState states
  }
}