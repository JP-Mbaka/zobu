import 'package:flutter/material.dart';
import 'package:zobu/constant/image_refs.dart';

import '../constant/dimensions.dart';
import '../style/colors.dart';
import '../style/text.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        height: height(context) - MediaQuery.of(context).viewInsets.bottom,
        width: width(context),
        child: Stack(
          children: [
            Container(
              child: Stack(
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
                    child: Column(
                      children: [
                        TextFormField(
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
                              onPressed: () {},
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
