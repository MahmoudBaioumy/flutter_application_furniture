import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/routing/email_vaildate.dart';
import 'package:flutter_application_2/core/routing/routing.dart';
import 'package:flutter_application_2/core/utils/app_colors.dart';
import 'package:flutter_application_2/core/utils/text_style.dart';
import 'package:flutter_application_2/core/widgets/custom_but.dart';
import 'package:flutter_application_2/features/auth/presentation/view/signup_view.dart';
import 'package:gap/gap.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  bool isVisable = true;
  final TextEditingController _emailController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whitecolor,
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 130, left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello !',
                    style: getTitelstyle(
                        fontSize: 40,
                        color: AppColors.grey2color,
                        fontWeight: FontWeight.normal),
                  ),
                  const Gap(10),
                  Text(
                    'WELCOME BACK',
                    style: getTitelstyle(
                        fontSize: 30, color: AppColors.blackcolor),
                  ),
                  const Gap(40),
                  Text(
                    'Email',
                    style:
                        getBodystyle(color: AppColors.greycolor, fontSize: 14),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: _emailController,
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      hintStyle: getBodystyle(color: AppColors.greycolor),
                    ),
                    textInputAction: TextInputAction.next,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'من فضلك ادخل الايميل';
                      } else if (!emailValidate(value)) {
                        return 'من فضلك ادخل الايميل صحيحا';
                      } else {
                        return null;
                      }
                    },
                  ),
                  Divider(
                    color: AppColors.grey2color,
                    height: 3,
                  ),
                  const Gap(25),
                  Text(
                    'Password',
                    style:
                        getBodystyle(color: AppColors.greycolor, fontSize: 14),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    controller: _passwordController,
                    obscureText: isVisable,
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                        hintStyle: getBodystyle(color: AppColors.greycolor),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isVisable = !isVisable;
                            });
                          },
                          icon: Icon(
                            (isVisable)
                                ? Icons.remove_red_eye
                                : Icons.visibility_off,
                            color: AppColors.blackcolor,
                          ),
                        )),
                    textInputAction: TextInputAction.next,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'You must Enter the passwoed';
                      }
                      return null;
                    },
                  ),
                  Divider(
                    color: AppColors.grey2color,
                    height: 3,
                  ),
                  const Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forgot Password',
                            style: getTitelstyle(
                                color: AppColors.blackcolor,
                                fontWeight: FontWeight.w500),
                          )),
                    ],
                  ),
                  const Gap(20),
                  Center(
                    child: CustomButton(
                      text: 'Log in',
                      onPressed: () {},
                      background: AppColors.blackcolor,
                      height: 50,
                      width: 280,
                    ),
                  ),
                  const Gap(15),
                  Center(
                    child: TextButton(
                        onPressed: () {
                          push(context, const SignupView());
                        },
                        child: Text(
                          'SIGN UP',
                          style: getBodystyle(
                              color: AppColors.greycolor, fontSize: 19),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
