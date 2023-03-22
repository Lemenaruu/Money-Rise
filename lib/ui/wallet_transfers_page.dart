import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../theme/app_theme.dart';
import '../theme/color.dart';
import '../theme/size.dart';

class WalletTransfersPage extends StatelessWidget {
  const WalletTransfersPage({super.key});

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
                      'Wallet Transfer',
                      style: AppTheme.titleText,
                    ),
                  ],
                ),
              ),
            ),
            h10,
            Padding(
              padding: pdAll12,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ma Eaint Myat Mon',
                    style: AppTheme.titleText,
                  ),
                  Text(
                    '******8546',
                    style: AppTheme.bodyText,
                  ),
                ],
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
                      'Phone Number',
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
                      'Amount',
                      style: AppTheme.titleText,
                    ),
                  ),
                  h10,
                  TextFormField(
                    decoration: inputDecoration,
                  ),
                  h20,
                  Container(
                    width: size.width * 0.6,
                    height: size.height * 0.14,
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColor.black),
                      color: AppColor.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/CloudUpload.png",
                          height: 22,
                          width: 22,
                          color: AppColor.black,
                        ),
                        SizedBox(
                          width: size.width * 0.4,
                          child: Text(
                            textAlign: TextAlign.center,
                            'Drag & Drop to Upload Files OR Browse files',
                            style: AppTheme.txtSize11,
                          ),
                        ),
                      ],
                    ),
                  ),
                  h20,
                  ElevatedButton(
                    style: btnStyle,
                    onPressed: () {
                      // context.pushNamed(serviceConfirm);
                    },
                    child: Text(
                      'Transfer',
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
