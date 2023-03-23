import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:money_rise/providers/router_provider.dart';
import 'package:money_rise/theme/app_theme.dart';

import '../theme/color.dart';
import '../theme/size.dart';

class MyProfileFragment extends StatelessWidget {
  MyProfileFragment({super.key});
 
  List<String> gameImagesList = [
    'assets/images/valorant_mediumn.png',
    'assets/images/pubg.png',
    'assets/images/coc.png',
    'assets/images/mlbb.png',
    'assets/images/valorant_mediumn.png',
    'assets/images/pubg.png',
    'assets/images/coc.png',
    'assets/images/mlbb.png',
  ];
  List<String> gameNamesList = [
    'Valorant',
    'Pubg',
    'Coc',
    'Mlbb',
    'Valorant',
    'Pubg',
    'Coc',
    'Mlbb',
  ];
  List<String> categoryList = [
    'Game',
    'Entertainment',
    'Others',
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: size.height * 0.2,
                width: size.width,
                color: AppColor.burlyWood,
                child: Padding(
                  padding: pdAll10,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                            'assets/images/myProfile.png',
                            height: 70,
                            width: 70,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      w10,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ma Eaint Myat Mon',
                            style: AppTheme.titleText,
                          ),
                          Text(
                            '09*****8695',
                            style: AppTheme.txtSize11,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: pdAll12,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Personal Info',
                        style: AppTheme.titleText,
                      ),
                    ),
                    h10,
                    ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                      child: Column(
                        children: const [
                          AccountSetting(
                            name: 'View Account',
                          ),
                          Divider(
                            thickness: 1,
                            height: 0,
                          ),
                          AccountSetting(name: 'Change Account'),
                          Divider(
                            thickness: 1,
                            height: 0,
                          ),
                          AccountSetting(name: 'Change Phone Number'),
                          Divider(
                            thickness: 1,
                            height: 0,
                          ),
                          AccountSetting(name: 'QR Code'),
                          Divider(
                            thickness: 1,
                            height: 0,
                          ),
                          AccountSetting(name: 'Choose Language'),
                          Divider(
                            thickness: 1,
                            height: 0,
                          ),
                          AccountSetting(name: 'Pin Managment'),
                        ],
                      ),
                    ),
                    h10,
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Settings',
                        style: AppTheme.titleText,
                      ),
                    ),
                    h10,
                    ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                      child: Column(
                        children: const [
                          AccountSetting(
                            name: 'Settings',
                          ),
                          Divider(
                            thickness: 1,
                            height: 0,
                          ),
                          AccountSetting(name: 'Share App'),
                          Divider(
                            thickness: 1,
                            height: 0,
                          ),
                          AccountSetting(name: 'Help & Feedback'),
                        ],
                      ),
                    ),
                    h20,
                    ElevatedButton(
                      style: btnStyle,
                      onPressed: () {
                        context.goNamed(splash);
                      },
                      child: Text(
                        'Logout Now',
                        style: AppTheme.btnText,
                      ),
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

class AccountSetting extends StatelessWidget {
  final String name;

  const AccountSetting({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.white,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: AppTheme.txtSize11,
          ),
          const Icon(
            CupertinoIcons.right_chevron,
            size: 14,
          ),
        ],
      ),
    );
  }
}
