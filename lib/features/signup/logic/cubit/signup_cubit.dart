import 'package:doc_point/core/networking/api_result.dart';
import 'package:doc_point/features/signup/data/models/sign_up_request_body.dart';
import 'package:doc_point/features/signup/data/repos/sign_up_repo.dart';
import 'package:doc_point/features/signup/logic/cubit/signup_state.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this._signUpRepo) : super(SignupState.initial());
  final SignUpRepo _signUpRepo;
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();
  final formKey = GlobalKey<FormState>();
  void emitSignupStates() async {
    emit(SignupState.loading());
    final response = await _signUpRepo.signup(
      SignUpRequestBody(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        password: passwordController.text,
        passwordconfirmation: passwordConfirmationController.text,
        gender: 0,
      ),
    );
    response.when(
      success: (response) {
        emit(SignupState.success(response));
      },
      failure: (error) {
        SignupState.error(error: error.apiErrorModel.message ?? '');
      },
    );
  }
}
