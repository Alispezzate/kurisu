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
  SignInBloc({required this.authenticationRepository}) : super(const SignInState.idle()) {
    on<PerformSignInEvent>(_onPerform);
    on<SignOutSignInEvent>(_onSignOut);
    on<CheckSignInEvent>(_onCheck);
  }

  /// Method used to add the [PerformSignInEvent] event
  void perform(String token, String username) => add(SignInEvent.perform(token, username));

  Future<FutureOr<void>> _onPerform(
    PerformSignInEvent event,
    Emitter<SignInState> emit,
  ) async {
    emit(const SignInState.performing());

    try {
      await authenticationRepository.signIn(event.token, event.username);
      emit(const SignInState.performed());
    } catch (error) {
      emit(SignInState.error(error.toString()));
    }
  }

  /// Method used to add the [CheckSignInEvent] event
  void check() => add(const SignInEvent.check());

  Future<FutureOr<void>> _onCheck(
    CheckSignInEvent event,
    Emitter<SignInState> emit,
  ) async {
    emit(const SignInState.performing());

    try {
      bool isSignedIn = await authenticationRepository.isSignedIn();
      if (isSignedIn) {
        emit(const SignInState.performed());
      } else {
        emit(const SignInState.idle());
      }
    } catch (error) {
      emit(SignInState.error(error.toString()));
    }
  }

  /// Method used to add the [SignOutSignInEvent] event
  void signOut() => add(const SignInEvent.signOut());

  Future<FutureOr<void>> _onSignOut(
    SignOutSignInEvent event,
    Emitter<SignInState> emit,
  ) async {
    emit(const SignInState.performing());

    try {
      await authenticationRepository.signOut();
      emit(const SignInState.idle());
    } catch (error) {
      emit(SignInState.error(error.toString()));
    }
  }
}
