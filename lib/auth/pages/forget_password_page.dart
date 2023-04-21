





import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:go_router/go_router.dart';
import 'package:money_rise/theme/color.dart';
import 'package:money_rise/theme/size.dart';

import '../../providers/router_provider.dart';

class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.grey100,
      ),
    
      body: Padding(
        padding:pdAll12,
        child: Column(children: [
          Icon(Icons.lock,size: 90,),
          h30,

          Text('Forget Password',textAlign: TextAlign.center,style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600),),
          h10,
          Text('Please enter your phone number and we will send you otp code to reset your password',textAlign: TextAlign.center,),
          h40,
          



          TextFormField(decoration: inputDecoration.copyWith(prefixIcon: Icon(Icons.phone_android_rounded,size: 25,color: AppColor.burlyWood,),hintText: 'Phone'),),
          h10,
          ElevatedButton(
            style: btnStyle,


            onPressed: (){
              context.pushNamed(otp);
            }, child: Text('Next'),),
        ],),
      ),
    );
  }
}