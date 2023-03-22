import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../theme/app_theme.dart';
import '../theme/color.dart';
import '../theme/size.dart';

class TopUpDetailPage extends StatelessWidget {
  TopUpDetailPage({super.key});
  List<String> bills = [
    '1000 ks',
    '2000 ks',
    '3000 ks',
    '4000 ks',
    '5000 ks',
    '10000 ks',
    '20000 ks',
    '30000 ks',
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
                  SizedBox(
                    // color: AppColor.greenAccent,
                    width: size.width,
                    height: size.height * 0.2,
                    child: GridView.builder(
                      itemCount: bills.length,
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: size.width * 0.4,
                        mainAxisExtent: size.height * 0.05,
                        childAspectRatio: 2 / 2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 16,
                      ),
                      itemBuilder: (context, index) {
                        return ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: AppColor.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                          ),
                          onPressed: () {},
                          child: Text(
                            bills[index],
                            style: AppTheme.txtSize11,
                          ),
                        );
                      },
                    ),
                  ),
                  h20,
                  ElevatedButton(
                    style: btnStyle,
                    onPressed: () {
                      // context.pushNamed(serviceConfirm);
                    },
                    child: Text(
                      'Next',
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
