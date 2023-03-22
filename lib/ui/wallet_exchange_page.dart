import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../theme/app_theme.dart';
import '../theme/color.dart';
import '../theme/size.dart';

class WalletExchangePage extends StatelessWidget {
  const WalletExchangePage({super.key});

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
                    GestureDetector(
                      onTap: () {
                        context.pop();
                      },
                      child: Icon(
                        CupertinoIcons.left_chevron,
                        color: AppColor.black,
                      ),
                    ),
                    w12,
                    Text(
                      'Wallet Exchange',
                      style: AppTheme.titleText,
                    ),
                  ],
                ),
              ),
            ),
            h10,
            Padding(
              padding: pdvertical12,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  '5000.00 (MMK)',
                  style: AppTheme.titleText,
                ),
              ),
            ),
            const Divider(),
            Padding(
              padding: pdAll12,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Exchange Account',
                      style: AppTheme.titleText,
                    ),
                  ),
                  h10,
                  TextFormField(
                    decoration: inputDecoration,
                  ),
                  h10,
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Password',
                      style: AppTheme.titleText,
                    ),
                  ),
                  h10,
                  TextFormField(
                    decoration: inputDecoration,
                  ),
                  h20,
                  ElevatedButton(
                    style: btnStyle,
                    onPressed: () {
                      // context.pushNamed(serviceConfirm);
                    },
                    child: Text(
                      'Exchange',
                      style: AppTheme.btnText,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
