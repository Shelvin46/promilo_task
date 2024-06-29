import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:promilo/features/authentication/domain/entities/user_entity.dart';
import 'package:promilo/features/authentication/domain/usecases/login_usecases.dart';
import 'package:promilo/service_locator.dart';
part 'login_event.dart';
part 'login_state.dart';

/// [LoginBloc] is a class that extends [Bloc] and contains the business logic for the login screen.
/// It uses [LoginEvent] to handle the events.
/// It uses [LoginState] to handle the states.
/// In this class, we have a method called [on<InitializeLogin>] which takes [LoginEvent] as a parameter and returns [void].
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<InitializeLogin>((event, emit) async {
      final UserEntity userEntity = UserEntity(
        email: event.email,
        password: event.password,
      );

      try {
        // Emit a LoginLoading state to show a loading indicator
        emit(const LoginLoading());
        // Call the usecase to login the user
        // Ensure the executeLogin method is awaited to get the result of the asynchronous operation
        final result = await locator<LoginUsecases>().executeLogin(userEntity);

        // Handle the result
        result.fold(
          (failure) {
            // If the result is a failure, emit a LoginFailure state

            return emit(LoginFailure(failure.message));
          },
          (data) {
            // If the result is successful, emit the LoginSuccess state

            return emit(LoginSuccess(data));
          },
        );
      } catch (e) {
        // Handle any exceptions that might occur during the login process
        // Emit a LoginFailure state with a generic error message or log the error
        return emit(const LoginFailure('An unexpected error occurred'));
      }
    });
  }
}
