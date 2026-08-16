// ignore_for_file: non_constant_identifier_names

import 'package:doc_point/core/helper/extensions.dart';
import 'package:doc_point/core/routing/routes.dart';
import 'package:doc_point/core/theming/app_colors.dart';
import 'package:doc_point/core/theming/text_styles.dart';
import 'package:doc_point/features/login/logic/logi_cubit/login_cubit.dart';
import 'package:doc_point/features/login/logic/logi_cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) {
                return Center(
                  child: CircularProgressIndicator(color: AppColors.mainBlue),
                );
              },
            );
          },
          success: (data) {
            context.pop();
            context.pushNamed(Routes.homeScreen);
          },
          error: (error) {
            context.pop();
            SetUpErrorState(context, error);
          },
        );
      },
      child: SizedBox.shrink(),
    );
  }

  Future<dynamic> SetUpErrorState(BuildContext context, String error) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: Icon(Icons.error, color: Colors.red, size: 32),
        content: Text(error, style: TextStyles.font15DarkBlueMedium),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text('Get it', style: TextStyles.font14BlueSemiBold),
          ),
        ],
      ),
    );
  }
}
