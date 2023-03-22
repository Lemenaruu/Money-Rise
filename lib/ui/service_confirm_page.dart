import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:money_rise/theme/color.dart';

import '../theme/app_theme.dart';
import '../theme/size.dart';

class ServiceConfirmPage extends StatelessWidget {
  const ServiceConfirmPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: size.width,
                height: size.height * 0.25,
                // color: AppColor.burlyWood,
                child: Stack(
                  children: [
                    SizedBox(
                      width: size.width,
                      height: size.height * 0.2,
                      child: Image.asset(
                        'assets/images/valorant_bg.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 10,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(
                            width: 90,
                            height: 75,
                            child: Image.asset(
                              'assets/images/valorant.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          w8,
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              'Valorant (US)',
                              style: AppTheme.titleText,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: 10,
                      child: GestureDetector(
                        onTap: () {
                          context.pop();
                        },
                        child: Icon(
                          CupertinoIcons.left_chevron,
                          color: AppColor.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              h10,
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: AppColor.white,
                ),
                width: size.width,
                height: size.height * 0.28,
                child: Stack(
                  children: [
                    Padding(
                      padding: pdAll12,
                      child: Column(
                        children: [
                          Text('Order Confirmation', style: AppTheme.titleText),
                          h8,
                          Align(
                            alignment: Alignment.center,
                            child: Text('30,000.00 MMK',
                                style: AppTheme.titleText.copyWith(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                )),
                          ),
                          h8,
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Your Passcode',
                              style: AppTheme.titleText,
                            ),
                          ),
                          h10,
                          TextFormField(
                            decoration: inputDecoration.copyWith(
                                fillColor: AppColor.grey100),
                          ),
                          h10,
                          ElevatedButton(
                            style: btnStyle,
                            onPressed: () {},
                            child: Text(
                              'Pay',
                              style: AppTheme.btnText,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 12,
                      top: 12,
                      child: Text('Cancel',
                          style: AppTheme.bodyText.copyWith(fontSize: 13)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
