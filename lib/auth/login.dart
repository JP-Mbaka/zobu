import 'package:flutter/material.dart';
import 'package:zobu/auth/signUp.dart';
import 'package:zobu/constant/dimensions.dart';
import 'package:zobu/constant/image_refs.dart';
import 'package:zobu/post/feeds.dart';
import 'package:zobu/style/colors.dart';
import 'package:zobu/style/text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: height(context) * 0.5 -
                  MediaQuery.of(context).viewInsets.bottom,
              width: width(context),
              color: BLUE,
              // decoration: BoxDecoration(border: Border.all()),
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Positioned(
                    left: height(context) * 0.002,
                    child: Transform.rotate(
                      angle: 15,
                      child: Image.asset(hmm2),
                    ),
                  ),
                  Positioned(
                    top: height(context) * 0.001 - width(context) * 1.8,
                    child: Transform.rotate(
                      angle: 125,
                      child: Image.asset(
                        hmm1,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: height(context) * 0.08,
                    child: Transform.rotate(
                      angle: 45.3,
                      child: Image.asset(
                        hmm3,
                      ),
                      // SvgPicture.asset(
                      //   height: height(context) * 0.4,
                      //   width: width(context) * 0.8,
                      //   blob1,
                      //   color: Colors.amber[900],
                      // ),
                    ),
                  ),
                  Positioned(
                    left: width(context) * 0.12,
                    top: height(context) * 0.25,
                    child: Text(
                      'Welcome',
                      textAlign: TextAlign.center,
                      style: headerStyle(color: WHITE, fontSize: 30.0),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height(context) * 0.05),
            Container(
              width: width(context) * 0.95,
              // margin: const EdgeInsets.only(bottom: 20) + ,
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                children: [
                  Form(
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                              label: Text("Username"),
                              suffixIcon: Icon(Icons.person)),
                        ),
                        SizedBox(height: height(context) * 0.02),
                        TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
                              label: Text('Password'),
                              suffixIcon: Icon(Icons.password)),
                        ),
                        SizedBox(height: height(context) * 0.02),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Sign in',
                              style: headerStyle(),
                            ),
                            IconButton.filled(
                              highlightColor: GREEN,
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) => const Feeds()));
                              },
                              icon: const Icon(Icons.arrow_forward),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: height(context) * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => SignUp(),
                            ),
                          );
                        },
                        child: Text(
                          'Create acount',
                          style: underlineBodyStyle(color: GREEN),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot Password',
                          style: underlineBodyStyle(color: RED2),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
