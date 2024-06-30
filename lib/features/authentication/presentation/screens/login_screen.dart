import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:page_transition/page_transition.dart';
import 'package:promilo/core/constants/text_style_constants.dart';
import 'package:promilo/core/extensions/media_query_extension.dart';
import 'package:promilo/core/extensions/page_transition_extension.dart';
import 'package:promilo/features/authentication/presentation/blocs/login/login_bloc.dart';
import 'package:promilo/features/authentication/presentation/screens/widgets/button_loading_widget.dart';
import 'package:promilo/features/base_screen/presentation/screens/base_screen.dart';
import 'package:promilo/features/widgets/button_widget.dart';
import 'package:promilo/features/authentication/presentation/screens/widgets/custom_divider.dart';
import 'package:promilo/features/authentication/presentation/screens/widgets/login_and_sign_up_options.dart';
import 'package:promilo/features/authentication/presentation/screens/widgets/login_fields.dart';
import 'package:promilo/features/authentication/presentation/screens/widgets/social_media_login_options.dart';
import 'package:promilo/features/authentication/presentation/screens/widgets/terms_and_conditions.dart';
import 'package:promilo/features/widgets/base_widgets.dart';

/// This is the LoginScreen widget.
/// [LoginScreen] is the main screen of the application.
/// It contains the login form and other options to login.
/// It uses [BaseWidget], [LoginFields], [ButtonWidget], [CustomDivider], [SocialMediaLoginOptions], [LoginAndSignUoOptions], [TermsAndConditionsWidget] widgets.
/// It uses [TextStyleConstants] for styling.
/// It uses [MediaQueryExtension] for responsive design.
/// It uses [Form] for form validation.
/// It uses [LoginBloc] to handle the business logic.

///
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  late TextEditingController emailController;
  late TextEditingController passwordController;
  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();

  ValueNotifier<bool> isFormFilled = ValueNotifier(false);

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    // This method is used to listen to the changes in the text fields.
    emailController.addListener(() {
      updateFormStatus();
    });

    passwordController.addListener(() {
      updateFormStatus();
    });
    super.initState();
  }

  // This method is used to update the form status.
  void updateFormStatus() {
    isFormFilled.value =
        emailController.text.isNotEmpty && passwordController.text.isNotEmpty;
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    isFormFilled.dispose();
    formKey.currentState?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("promilo", style: TextStyleConstants.subtitle),
                SizedBox(height: context.largeGap),
                Text("Hi, Welcome Back!", style: TextStyleConstants.subtitle),
                SizedBox(height: context.mediumGap),
                LoginFields(
                  emailFocusNode: emailFocusNode,
                  passwordFocusNode: passwordFocusNode,
                  emailController: emailController,
                  passwordController: passwordController,
                ),

                // This is the BlocConsumer widget.
                // It is used to listen to the state changes in the LoginBloc.
                // It is used to show the loading indicator when the user clicks on the login button.
                // It is used to show the error message when the user enters the wrong credentials.
                // It is used to show the success message when the user logs in successfully.

                BlocConsumer<LoginBloc, LoginState>(
                  listener: (context, state) {
                    if (state is LoginSuccess) {
                      // unfocus the text fields when the user logs in successfully.
                      emailFocusNode.unfocus();
                      passwordFocusNode.unfocus();

                      // Navigate to the HomeScreen when the user logs in successfully.
                      context.pushReplacementWithTransition(
                        const BaseScreen(),
                        PageTransitionType.fade,
                      );

                      // clear the text fields when the user logs in successfully.
                      emailController.clear();
                      passwordController.clear();
                    } else if (state is LoginFailure) {
                      // Show a snackbar with the error message when the user enters the wrong credentials.
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(state.message),
                        ),
                      );
                    }
                  },
                  builder: (context, state) {
                    if (state is LoginLoading) {
                      // Show a loading indicator when the user clicks on the login button.
                      return const ButtonLoadingWidget();
                    }
                    // Show the login button when the user enters the email and password.
                    return ValueListenableBuilder(
                        valueListenable: isFormFilled,
                        builder: (context, bool isFilled, child) {
                          return GestureDetector(
                            onTap: () {
                              if (formKey.currentState!.validate()) {
                                context.read<LoginBloc>().add(
                                      InitializeLogin(
                                        email: emailController.text,
                                        password: passwordController.text,
                                      ),
                                    );
                              }
                            },
                            child: ButtonWidget(
                                color: isFilled
                                    ? const Color.fromARGB(255, 10, 81, 157)
                                    : const Color.fromARGB(255, 230, 220, 220)),
                          );
                        });
                  },
                ),
                SizedBox(height: context.mediumGap),
                const CustomDivider(),
                SizedBox(height: context.mediumGap),
                const SocialMediaLoginOptions(),
                SizedBox(height: context.mediumGap),
                const LoginAndSignUoOptions(),
                SizedBox(height: context.mediumGap),
                const TermsAndConditionsWidget().toCenter(),
              ],
            ).toCenter(),
          ),
        ),
      ),
    );
  }
}
