import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:money_rise/auth/pages/signup_page.dart';
import 'package:money_rise/fragment/home_fragment.dart';
import 'package:money_rise/model/admin_model.dart';
import 'package:money_rise/providers/login_provider.dart';
import 'package:money_rise/providers/router_provider.dart';
import 'package:money_rise/theme/color.dart';
import 'package:money_rise/theme/size.dart';

import '../../theme/app_theme.dart';



class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nameController;
    passwordController;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    nameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: pdAll12,
          child: Form(
            key: _formKey,
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
                    'Login',
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
                h4,
                Text(
                  'Password',
                  style:
                      AppTheme.titleText.copyWith(fontStyle: FontStyle.normal),
                ),
                h4,
                TextFormField(
                  onTap: () {},
                  decoration: inputDecoration,
                ),
                h10,
               ElevatedButton(
                      style: btnStyle,
                      onPressed: 
                           () {}
                         ,
                      child: const Text('Login Now'),
                    ),
                h10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          // hoverColor: AppColor.yellow,
                          activeColor: AppColor.greenAccent,
                          checkColor: AppColor.black,
                          fillColor:
                              MaterialStateProperty.all(Colors.grey.shade300),
                          value: false,
                          onChanged: (value) {},
                        ),
                        Text(
                          'Remember me',
                          style: AppTheme.bodyText.copyWith(fontSize: 13),
                        ),
                      ],
                    ),
                    Text(
                      'Forget Password?',
                      style: AppTheme.bodyText.copyWith(fontSize: 13),
                    ),
                  ],
                ),
                const Spacer(),
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
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
                                builder: (_) => const SignUpPage()));
                      },
                      child: Text(
                        ' SignUp Now',
                        style: AppTheme.titleText.copyWith(
                          fontStyle: FontStyle.normal,
                          color: AppColor.burlyWood,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
