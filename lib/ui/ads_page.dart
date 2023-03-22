import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theme/app_theme.dart';
import '../theme/color.dart';
import '../theme/size.dart';

class ADsPage extends StatelessWidget {
  const ADsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: AppColor.burlyWood,
              child: Padding(
                padding: pdAll10,
                child: Row(
                  children: [
                    Icon(
                      CupertinoIcons.left_chevron,
                      color: AppColor.black,
                    ),
                    w12,
                    Text(
                      'ADs',
                      style: AppTheme.titleText,
                    ),
                  ],
                ),
              ),
            ),
            h20,
            SizedBox(
              width: size.width,
              // height: size.height * 0.18,
              child: Image.asset(
                'assets/images/discount.png',
                fit: BoxFit.cover,
              ),
            ),
            h20,
            Padding(
              padding: pdHorizontal12,
              child: ElevatedButton(
                style: btnStyle,
                onPressed: () {
                  // context.pushNamed(serviceConfirm);
                },
                child: Text(
                  'View More',
                  style: AppTheme.btnText,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
