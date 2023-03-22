import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:money_rise/providers/router_provider.dart';
import 'package:money_rise/theme/app_theme.dart';
import 'package:money_rise/theme/size.dart';

import '../theme/color.dart';

class TopUpMainPage extends StatelessWidget {
  TopUpMainPage({super.key});

  List<String> imageList = [
    'assets/images/atom.png',
    'assets/images/mpt.png',
    'assets/images/mytel.png',
    'assets/images/ooredoo.png',
  ];
  List<String> operatorNames = [
    'Atom',
    'MPT',
    'Mytel',
    'Ooredoo',
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
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
                      'Mobile Bill Top - Up',
                      style: AppTheme.titleText,
                    ),
                  ],
                ),
              ),
            ),
            h10,
            Padding(
              padding: pdHorizontal12,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Operators',
                  style: AppTheme.titleText,
                ),
              ),
            ),
            h10,
            Padding(
              padding: pdAll12,
              child: SizedBox(
                width: size.width,
                height: size.height * 0.5,
                child: GridView.builder(
                  itemCount: operatorNames.length,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: size.width * 0.5,
                    mainAxisExtent: size.height * 0.2,
                    childAspectRatio: 2 / 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        context.pushNamed(topUpDetail);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Center(
                                child: Image.asset(
                                  imageList[index],
                                  fit: BoxFit.cover,
                                  height: 80,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Text(
                                  operatorNames[index],
                                  style: AppTheme.titleText,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
