import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:money_rise/providers/router_provider.dart';
import 'package:money_rise/theme/color.dart';

import '../theme/app_theme.dart';
import '../theme/size.dart';

class ServicePage extends StatefulWidget {
  const ServicePage({super.key});

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  int selectedIndex = -1;

  List<String> priceUsd = [
    '5 USD',
    '10 USD',
    '20 USD',
    '25 USD',
    '35 USD',
    '50 USD',
    '75 USD',
    '85 USD',
    '100 USD',
  ];

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
              Padding(
                padding: pdAll12,
                child: Column(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: priceUsd.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              minimumSize: const Size(double.infinity, 40),
                              backgroundColor: AppColor.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                                side: BorderSide(
                                  color: selectedIndex == index
                                      ? AppColor.burlyWood
                                      : AppColor.white,
                                ),
                              ),
                            ),
                            // btnWhiteStyle,
                            onPressed: () {
                              setState(() {});
                              selectedIndex = index;
                            },
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                priceUsd[index],
                                style: AppTheme.txtSize11,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
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
                    h30,
                    ElevatedButton(
                      style: btnStyle,
                      onPressed: () {
                        context.pushNamed(serviceConfirm);
                      },
                      child: Text(
                        'Next',
                        style: AppTheme.btnText,
                      ),
                    ),
                    h10,
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
