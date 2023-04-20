import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money_rise/auth/pages/login_page.dart';
import 'package:money_rise/theme/color.dart';
import 'package:money_rise/theme/size.dart';

import '../../theme/app_theme.dart';

class SignUpPage extends ConsumerStatefulWidget {
  const SignUpPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignUpPageState();
}

class _SignUpPageState extends ConsumerState<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: pdAll12,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            h10,
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                // color: Colors.amberAccent,
                width: size.width * 0.6,
                height: size.height * 0.2,
                child: Image.asset("assets/images/logo.png"),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Register',
                style: AppTheme.titleText
                    .copyWith(fontStyle: FontStyle.normal),
              ),
            ),
            h10,
            Text(
              'Username',
              style:
                  AppTheme.titleText.copyWith(fontStyle: FontStyle.normal),
            ),
            h4,
            TextFormField(
              decoration: inputDecoration,
            ),
            h10,
            Text(
              'Phone Number',
              style:
                  AppTheme.titleText.copyWith(fontStyle: FontStyle.normal),
            ),
            h4,
            TextFormField(
              decoration: inputDecoration,
            ),
            h10,
            Text(
              'NRC',
              style:
                  AppTheme.titleText.copyWith(fontStyle: FontStyle.normal),
            ),
            h4,
            TextFormField(
              onTap: () {},
              decoration: inputDecoration,
            ),
            h10,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: size.width * 0.4,
                  height: size.height * 0.12,
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  decoration: BoxDecoration(
                    color: AppColor.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: AppColor.black),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Front Photo',
                        style: AppTheme.bodyText.copyWith(fontSize: 11),
                      ),
                      Image.asset(
                        "assets/images/CloudUpload.png",
                        height: 22,
                        width: 22,
                        color: AppColor.black,
                      ),
                      SizedBox(
                        width: size.width * 0.3,
                        child: Text(
                          textAlign: TextAlign.center,
                          'Drag & Drop or Browse files',
                          style: AppTheme.bodyText.copyWith(fontSize: 11),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: size.width * 0.4,
                  height: size.height * 0.12,
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  decoration: BoxDecoration(
                    color: AppColor.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: AppColor.black),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Back Photo',
                        style: AppTheme.bodyText.copyWith(fontSize: 11),
                      ),
                      Image.asset(
                        "assets/images/CloudUpload.png",
                        height: 22,
                        width: 22,
                        color: AppColor.black,
                      ),
                      SizedBox(
                        width: size.width * 0.3,
                        child: Text(
                          textAlign: TextAlign.center,
                          'Drag & Drop or Browse files',
                          style: AppTheme.bodyText.copyWith(fontSize: 11),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            h10,
            Text(
              'Enter Password',
              style:
                  AppTheme.titleText.copyWith(fontStyle: FontStyle.normal),
            ),
            h4,
            TextFormField(
              decoration: inputDecoration,
            ),
            h10,
            Text(
              'Confirm Password',
              style:
                  AppTheme.titleText.copyWith(fontStyle: FontStyle.normal),
            ),
            h4,
            TextFormField(
              decoration: inputDecoration,
            ),
            h10,
            ElevatedButton(
              style: btnStyle,
              onPressed: () {},
              child: const Text('SignUp Now'),
            ),
            Spacer(),
            Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already, have an account?",
                  style: AppTheme.titleText.copyWith(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const LoginPage()));
                  },
                  child: Text(
                    ' Login Now',
                    style: AppTheme.titleText.copyWith(
                      fontStyle: FontStyle.normal,
                      color: AppColor.burlyWood,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: kBottomNavigationBarHeight,),
          ],
        ),
      ),
    );
  }
}
