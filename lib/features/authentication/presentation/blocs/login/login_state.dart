part of 'login_bloc.dart';

sealed class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

final class LoginInitial extends LoginState {}

final class LoginLoading extends LoginState {
  const LoginLoading();

  @override
  List<Object> get props => [];
}

final class LoginSuccess extends LoginState {
  final UserEntity userEntity;

  const LoginSuccess(this.userEntity);

  @override
  List<Object> get props => [userEntity];
}

final class LoginFailure extends LoginState {
  final String message;

  const LoginFailure(this.message);

  @override
  List<Object> get props => [message];
}
