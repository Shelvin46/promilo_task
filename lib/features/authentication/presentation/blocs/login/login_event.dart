part of 'login_bloc.dart';

sealed class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class InitializeLogin extends LoginEvent {
  final String email;
  final String password;

  const InitializeLogin({required this.email, required this.password});

  @override
  List<Object> get props => [email, password];
}
