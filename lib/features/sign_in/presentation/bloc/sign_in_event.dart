part of 'sign_in_bloc.dart';

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.perform(String token, String username) = PerformSignInEvent;

  const factory SignInEvent.signOut() = SignOutSignInEvent;

  const factory SignInEvent.check() = CheckSignInEvent;
}
