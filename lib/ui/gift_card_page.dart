import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../theme/app_theme.dart';
import '../theme/color.dart';
import '../theme/size.dart';

class GiftCardPage extends StatelessWidget {
  GiftCardPage({super.key});
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
                        'Gift Card',
                        style: AppTheme.titleText,
                      ),
                    ],
                  ),
                ),
              ),
              h10,
              Padding(
                padding: pdHorizontal12,
                child: SizedBox(
                  height: 35,
                  width: size.width,
                  child: ListView.builder(
                    itemCount: categoryList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: SizedBox(
                          height: 35,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              categoryList[index],
                              style: AppTheme.btnText.copyWith(fontSize: 13),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: pdAll12,
                child: SizedBox(
                  width: size.width,
                  height: size.height,
                  child: GridView.builder(
                    itemCount: gameNamesList.length,
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: size.width * 0.45,
                      mainAxisExtent: size.height * 0.24,
                      childAspectRatio: 2 / 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 0,
                    ),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: size.height * 0.18,
                                decoration: BoxDecoration(
                                  // color: AppColor.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Center(
                                    child: Image.asset(
                                      gameImagesList[index],
                                      fit: BoxFit.cover,
                                      // height: 80,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(
                              gameNamesList[index],
                              style: AppTheme.titleText,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
