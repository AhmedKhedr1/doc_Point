import 'package:doc_point/core/helper/spacing.dart';
import 'package:doc_point/core/theming/text_styles.dart';
import 'package:doc_point/core/widgets/app_text_button.dart';
import 'package:doc_point/core/widgets/app_text_form_field.dart';
import 'package:doc_point/features/auth/presentation/views/widgets/dont_have_account_text.dart';
import 'package:doc_point/features/auth/presentation/views/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  bool isobscureText = true;
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
                verticalSpace(20),
                Text('Welcome Back', style: TextStyles.font24BlueBold),
                verticalSpace(8),
                Text(
                  'We\'re excited to have you back, can\'t wait to \nsee what you\'ve been up to since you last\nlogged in.',
                  style: TextStyles.font14GrayRegular,
                ),
                verticalSpace(36),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      AppTextFormField(hint: 'Email'),
                      verticalSpace(18),
                      AppTextFormField(
                        hint: 'Password',
                        isObscureText: isobscureText,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            isobscureText = !isobscureText;
                            setState(() {});
                          },
                          child: Icon(
                            isobscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                      ),
                      verticalSpace(24),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text(
                          'Forgot Password?',
                          style: TextStyles.font13BlueRegular,
                        ),
                      ),
                      verticalSpace(40),
                      AppTextButton(
                        buttonText: 'Login',
                        textStyle: TextStyles.font16WhiteSemiBold,
                        onPressed: () {},
                      ),
                      verticalSpace(24),
                      const TermsAndConditionsText(),
                      verticalSpace(14),
                      const DontHaveAccountText(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
