





import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:money_rise/theme/size.dart';

import '../../theme/app_theme.dart';

class ViewAccountPage extends StatelessWidget {
  const ViewAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('View Account'),centerTitle: true,),
      body: Padding(
        padding: pdAll12,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          h20,
         Align(
          alignment: Alignment.center,
           child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                              'assets/images/myProfile.png',
                              height: 90,
                              width: 90,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
         ),
         h20,
          Align(
            alignment: Alignment.center,
            child: Text(
                              'Ma Eaint Myat Mon',
                              style: AppTheme.titleText,
                               textAlign: TextAlign.center,
                            ),
          ),
                          h10,
                          Align(
                              alignment: Alignment.center,
                            child: Text(
                              '09*****8695',
                              textAlign: TextAlign.center,
                              style: AppTheme.txtSize11,
                            ),
                          ),
                          h10,
                          Text('User'),
                          h10,
      
                          TextFormField(
                            readOnly: true,
                            decoration: inputDecoration.copyWith(),initialValue: 'Ma Eaint Myat Mon',),
                           h10,
                          Text('Email'),
                          h10,
      
                          TextFormField(
                              readOnly: true,
                            decoration: inputDecoration.copyWith(),initialValue: 'maeaint12@gmail.com',),
                           h10,
                          Text('Phone'),
                          h10,
      
                          TextFormField(
                              readOnly: true,
                            decoration: inputDecoration.copyWith(),initialValue: '09255438695',),
                           h10,
                          Text('Birth Date (Optional)'),
                          h10,
      
                          TextFormField(
                              readOnly: true,
                            decoration: inputDecoration.copyWith(),initialValue: '14 Sept 1997',),
        ],),
      ),
    );
  }
}