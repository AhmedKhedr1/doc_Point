import 'package:doc_point/core/helper/spacing.dart';
import 'package:doc_point/core/theming/text_styles.dart';
import 'package:doc_point/core/widgets/app_text_button.dart';
import 'package:doc_point/features/login/ui/views/widgets/terms_and_conditions_text.dart';
import 'package:doc_point/features/signup/logic/cubit/signup_cubit.dart';
import 'package:doc_point/features/signup/ui/views/widgets/already_have_an_account.dart';
import 'package:doc_point/features/signup/ui/views/widgets/sign_up_bloc_listener.dart';
import 'package:doc_point/features/signup/ui/views/widgets/signup_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(
            horizontal: 30.w,
            vertical: 30.h,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Create Account', style: TextStyles.font24BlueBold),
                verticalSpace(4),
                Text(
                  'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                  style: TextStyles.font14GrayRegular,
                ),
                verticalSpace(18),
                SignupForm(),
                verticalSpace(20),
                AppTextButton(
                  buttonText: 'Create Account',
                  textStyle: TextStyles.font16WhiteSemiBold,
                  onPressed: () {
                    validateThenDoSignup(context);
                  },
                ),
                verticalSpace(20),
                TermsAndConditionsText(),
                verticalSpace(14),
                Center(child: AlreadyHaveAnAccount()),
                SignUpBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoSignup(BuildContext context) {
    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      context.read<SignupCubit>().emitSignupStates();
    }
  }
}
