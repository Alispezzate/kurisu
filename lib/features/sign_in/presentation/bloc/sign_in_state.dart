part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState.idle() = _IdleSignInState;

  const factory SignInState.performing() = _PerformingSignInState;

  const factory SignInState.performed() = _PerformedSignInState;

  const factory SignInState.error() = _ErrorSignInState;
}
