











import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:money_rise/theme/color.dart';
import 'package:money_rise/theme/size.dart';

import '../../theme/app_theme.dart';

class PinManagementPage extends StatelessWidget {
  const PinManagementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pin Management'),centerTitle: true,),
      body: Padding(
        padding: pdAll12,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          
        
        
         
                          h10,
                          Text('Current Password'),
                          h10,
      
                          TextFormField(
                            
                            decoration: inputDecoration.copyWith(),),
                           h10,
                          Text('New Password'),
                          h10,
      
                          TextFormField(
                              
                            decoration: inputDecoration.copyWith(),),
                           h10,
                          Text('Confirm New Password'),
                          h10,
      
                          TextFormField(
                              
                            decoration: inputDecoration.copyWith(),),
                            h20,

                            ElevatedButton(onPressed: (){}, child: Text('Update New Password'),style: btnStyle,),
                            h10,
                            ElevatedButton(onPressed: (){}, child: Text('Reset',style: TextStyle(color: AppColor.burlyWood),),style: btnWhiteStyle,),
                       
        ],),
      ),
    );
  }
}