import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zobu/auth/login.dart';
import 'package:zobu/constant/image_refs.dart';
import 'package:zobu/model/users.dart';
import 'package:zobu/provider/auth.dart';

import '../constant/dimensions.dart';
import '../style/colors.dart';
import '../style/text.dart';

class SignUp extends ConsumerStatefulWidget {
  @override
  ConsumerState<SignUp> createState() => _SignUpState();
}

class _SignUpState extends ConsumerState<SignUp> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController usernameController = TextEditingController();
  TextEditingController fnameController = TextEditingController();
  TextEditingController lnameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  signupUser() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    _formKey.currentState!.save();
    // print(usernameController.text);
    // print(fnameController.text);
    UsersModel user = UsersModel(
      username: usernameController.text,
      fname: fnameController.text,
      lname: lnameController.text,
      password: passwordController.text,
    );
    final signUp = ref.read(usersProvider.notifier).registerUser(user);

    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SizedBox(
        height: height(context) - MediaQuery.of(context).viewInsets.bottom,
        width: width(context),
        child: Stack(
          children: [
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Positioned(
                  bottom: height(context) * 0.0003,
                  child: Transform.rotate(
                    angle: 90,
                    child: Image.asset(
                      hmm1,
                      // height: height(context),
                    ),
                  ),
                ),
                Positioned(
                  bottom: height(context) * 0.3,
                  child: Image.asset(
                    hmm2,
                    // height: height(context),
                  ),
                ),
              ],
            ),
            Container(
              height:
                  height(context) - MediaQuery.of(context).viewInsets.bottom,
              padding: const EdgeInsets.only(right: 20.0),
              margin: const EdgeInsets.only(top: 50.0, left: 20.0),
              child: ListView(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Create Account',
                    textAlign: TextAlign.center,
                    style: headerStyle(color: WHITE, fontSize: 30.0),
                  ),
                  SizedBox(height: height(context) * 0.05),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: usernameController,
                          onChanged: (val) {
                            setState(() {
                              _formKey.currentState?.validate();
                            });
                          },
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'Please enter a valid name';
                            }
                            return null;
                          },
                          style: mediumBodyStyle(
                            color: WHITE2,
                            weight: FontWeight.w300,
                          ),
                          decoration: InputDecoration(
                            label: Text(
                              "Username",
                              style: mediumBodyStyle(
                                color: WHITE,
                                weight: FontWeight.w600,
                              ),
                            ),
                            suffixIcon:
                                const Icon(Icons.face_retouching_natural),
                            suffixIconColor: WHITE,
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: WHITE),
                            ),
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: WHITE),
                            ),
                          ),
                        ),
                        SizedBox(height: height(context) * 0.02),
                        TextFormField(
                          controller: fnameController,
                          onChanged: (val) {
                            setState(() {
                              _formKey.currentState?.validate();
                            });
                          },
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'Please enter a valid name';
                            }
                            return null;
                          },
                          style: mediumBodyStyle(
                            color: WHITE2,
                            weight: FontWeight.w300,
                          ),
                          decoration: InputDecoration(
                            label: Text(
                              "Firstname",
                              style: mediumBodyStyle(
                                color: WHITE,
                                weight: FontWeight.w600,
                              ),
                            ),
                            suffixIcon: const Icon(Icons.person),
                            suffixIconColor: WHITE,
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: WHITE),
                            ),
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: WHITE),
                            ),
                          ),
                        ),
                        SizedBox(height: height(context) * 0.02),
                        TextFormField(
                          controller: lnameController,
                          onChanged: (val) {
                            setState(() {
                              _formKey.currentState?.validate();
                            });
                          },
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'Please enter a valid name';
                            }
                            return null;
                          },
                          style: mediumBodyStyle(
                            color: WHITE2,
                            weight: FontWeight.w300,
                          ),
                          decoration: InputDecoration(
                            label: Text(
                              "Lastname",
                              style: mediumBodyStyle(
                                color: WHITE,
                                weight: FontWeight.w600,
                              ),
                            ),
                            suffixIcon: const Icon(Icons.family_restroom),
                            suffixIconColor: WHITE,
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: WHITE),
                            ),
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: WHITE),
                            ),
                          ),
                        ),
                        SizedBox(height: height(context) * 0.02),
                        TextFormField(
                          controller: passwordController,
                          onChanged: (val) {
                            setState(() {
                              _formKey.currentState?.validate();
                            });
                          },
                          validator: (value) {
                            if (value == null ||
                                value.trim().isEmpty ||
                                value.trim().length < 6) {
                              return 'Please enter a valid password more than 6 characters';
                            }
                            return null;
                          },
                          // inputFormatters: [
                          //   FilteringTextInputFormatter.deny('filterPattern')
                          // ],
                          autocorrect: false,
                          style: mediumBodyStyle(
                            color: WHITE2,
                            weight: FontWeight.w300,
                          ),
                          obscureText: true,
                          decoration: InputDecoration(
                            label: Text(
                              "Password",
                              style: mediumBodyStyle(
                                color: WHITE,
                                weight: FontWeight.w600,
                              ),
                            ),
                            suffixIcon: const Icon(Icons.password),
                            suffixIconColor: WHITE,
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: WHITE),
                            ),
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: WHITE),
                            ),
                          ),
                        ),
                        SizedBox(height: height(context) * 0.05),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Sign up',
                              style: headerStyle(color: WHITE),
                            ),
                            IconButton.filled(
                              highlightColor: GREEN,
                              onPressed: signupUser,
                              icon: const Icon(
                                Icons.arrow_forward,
                                color: WHITE,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: height(context) * 0.08),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      'Sign in',
                      style: underlineBodyStyle(color: GREEN),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
