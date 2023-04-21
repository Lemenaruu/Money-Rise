import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:money_rise/providers/router_provider.dart';
import 'package:money_rise/theme/size.dart';
import 'package:pinput/pinput.dart';

import '../../theme/color.dart';


class OtpPage extends StatelessWidget {
  OtpPage({super.key});
  final _formKey = GlobalKey<FormState>();
  final codeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // automaticallyImplyLeading: true,
          backgroundColor: AppColor.grey100,
          ),
      body: Padding(
       padding: pdAll12,
        child: Column(
          
          children: [
            Align(
              alignment: Alignment.center,
              child: Icon(Icons.verified_sharp,size: 90,
              ),
            ),
            h30,
            const Text(
              'Verification',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
            h10,
            const Align(
              alignment: Alignment.center,
              child: Text(
                'A 5-Digit PIN has been sent to your Mobile 0966660392. Enter it below to continue',
                textAlign: TextAlign.center,
                
              ),
            ),
            h30,
            Form(
              key: _formKey,
              child: Pinput(
                length: 5,
                controller: codeController,
                onCompleted: (value) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Processing verify...'),
                      behavior: SnackBarBehavior.floating,
                      duration: Duration(seconds: 1),
                    ),
                  );
                },
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: focusedPinTheme,
                submittedPinTheme: submittedPinTheme,
                showCursor: true,

                /// ------------
                /// With Validator
                /// Auto validate after user tap on keyboard done button, or completes Pinput
                // pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                validator: (value) {
                  if (value!.isNotEmpty) {
                    if (value.length != 5) {
                      return "You need to enter otp code.";
                    } else {
                      return null;
                    }
                  }
                  return "You need to enter otp code";
                },
              ),
            ),
            h10,
            RichText(
              text:  TextSpan(
                children: [
                  TextSpan(
                    text: "Didn't received the PIN? ",
                    style: TextStyle(
                      fontFamily: 'gotham',
                      
                      // decoration: TextDecoration.underline,
                      color: Colors.black,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: " RESEND",
                    recognizer:  TapGestureRecognizer()..onTap=() {
                      
                     
                       ScaffoldMessenger.of(context).showSnackBar(
                        
                     SnackBar(
                      backgroundColor: AppColor.burlyWood,
                      
                      content: Text('Sent Otp code to your phone number '),
                      behavior: SnackBarBehavior.floating,
                      duration: Duration(seconds: 3),
                    ),
                  );
                    },
                      
                      
                    
                    
                    style: TextStyle(
                      fontFamily: 'gotham',
                
                      decoration: TextDecoration.underline,
                      color: AppColor.burlyWood,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            h10,
            ElevatedButton(
              style: btnStyle,
              onPressed: () {
                context.pushNamed(createNewPassword);

              },
              child: const Text(
                'Verify',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final defaultPinTheme = PinTheme(
  width: 70,
  height: 70,
  textStyle: const TextStyle(
    fontSize: 20,
    color: Colors.black,
    fontWeight: FontWeight.w600,
  ),
  decoration: BoxDecoration(
    color: Colors.grey.shade300,
    // border: Border.all(color: const Color.fromRGBO(234, 239, 243, 1)),
    borderRadius: BorderRadius.circular(10),
  ),
);

final focusedPinTheme = defaultPinTheme.copyDecorationWith(
  border: Border.all(color: const Color.fromARGB(255, 0, 0, 0)),
);

final submittedPinTheme = defaultPinTheme.copyWith(
  decoration: defaultPinTheme.decoration?.copyWith(
    color: Colors.white,
  ),
);