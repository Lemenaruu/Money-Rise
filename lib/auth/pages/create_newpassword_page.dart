







import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:money_rise/auth/pages/signup_page.dart';
import 'package:money_rise/providers/router_provider.dart';

import 'package:money_rise/theme/color.dart';
import 'package:money_rise/theme/size.dart';

import '../../theme/app_theme.dart';



class CreateNewPasswordPage extends ConsumerStatefulWidget {
  const CreateNewPasswordPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<CreateNewPasswordPage> {
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
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColor.grey100,),
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
                child: Icon(Icons.phonelink_lock_outlined,size: 90,)
              ),
              h30,
              Text(
                'Your new password must be different from previously used password',
                textAlign: TextAlign.center,
                
              ),
              h30,
              Text(
                'New Password',
                style:
                    AppTheme.titleText.copyWith(fontStyle: FontStyle.normal),
              ),
              h10,
              TextFormField(
                decoration: inputDecoration,
              ),
              h10,
              Text(
                'Confirm Password',
                style:
                    AppTheme.titleText.copyWith(fontStyle: FontStyle.normal),
              ),
              h10,
              TextFormField(
                onTap: () {},
                decoration: inputDecoration,
              ),
              h10,
              ElevatedButton(
                style: btnStyle,
                onPressed:  (){
                  // context.goNamed(home);
              

              }, child: Text('Save'),),
             
              h10,
              
             
            ],
          ),
        ),
      ),
    );
  }
}
