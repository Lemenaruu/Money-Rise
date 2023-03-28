import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:money_rise/fragment/widgets/our_services_widget.dart';
import 'package:money_rise/providers/router_provider.dart';
import 'package:money_rise/theme/app_theme.dart';

import '../theme/color.dart';
import '../theme/size.dart';

class HomeFragment extends StatefulWidget {
  const HomeFragment({super.key});

  @override
  State<HomeFragment> createState() => _HomeFragmentState();
}

class _HomeFragmentState extends State<HomeFragment> {
  List<String> walletType = [
    'Main Wallet',
    'Wallet',
  ];

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
              SizedBox(
                height: size.height * 0.28,
                width: size.width,
                // color: AppColor.greenAccent,
                child: Stack(
                  children: [
                    Container(
                      height: size.height * 0.24,
                      width: size.width,
                      color: AppColor.burlyWood,
                      child: Padding(
                        padding: pdAll10,
                        child: Column(
                          children: [
                            h10,
                            Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset(
                                  'assets/images/logo.png',
                                  height: 70,
                                  width: 70,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 1,
                      child:
                          WalletCardWidget(size: size, walletType: walletType),
                    ),
                  ],
                ),
              ),
              h10,
              Center(
                child: SizedBox(
                  width: size.width * 0.6,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          context.pushNamed(topUpMain);
                        },
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.asset(
                                'assets/images/valorant.png',
                                height: 45,
                                width: 45,
                                fit: BoxFit.cover,
                              ),
                            ),
                            h6,
                            SizedBox(
                              width: 52,
                              height: 12,
                              child: Text(
                                'Top-Up',
                                style: AppTheme.txtSize11,
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          context.pushNamed(giftCard);
                        },
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.asset(
                                'assets/images/valorant.png',
                                height: 45,
                                width: 45,
                                fit: BoxFit.cover,
                              ),
                            ),
                            h6,
                            SizedBox(
                              width: 52,
                              height: 12,
                              child: Text(
                                'Gift Card',
                                style: AppTheme.txtSize11,
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          context.pushNamed(walletTransfers);
                        },
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.asset(
                                'assets/images/valorant.png',
                                height: 45,
                                width: 45,
                                fit: BoxFit.cover,
                              ),
                            ),
                            h6,
                            SizedBox(
                              width: 52,
                              height: 12,
                              child: Text(
                                'Transfer',
                                style: AppTheme.txtSize11,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              h20,
              Center(
                child: SizedBox(
                  width: size.width * 0.6,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset(
                              'assets/images/valorant.png',
                              height: 45,
                              width: 45,
                              fit: BoxFit.cover,
                            ),
                          ),
                          h6,
                          SizedBox(
                            width: 52,
                            height: 30,
                            child: Text(
                              'Bank Account',
                              textAlign: TextAlign.center,
                              style: AppTheme.txtSize11,
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          context.pushNamed(walletExchange);
                        },
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.asset(
                                'assets/images/valorant.png',
                                height: 45,
                                width: 45,
                                fit: BoxFit.cover,
                              ),
                            ),
                            h6,
                            SizedBox(
                              width: 54,
                              height: 30,
                              child: Text(
                                'Wallet Exchange',
                                textAlign: TextAlign.center,
                                style: AppTheme.txtSize11,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset(
                              'assets/images/valorant.png',
                              height: 45,
                              width: 45,
                              fit: BoxFit.cover,
                            ),
                          ),
                          h6,
                          SizedBox(
                            width: 52,
                            height: 30,
                            child: Text(
                              'History',
                              style: AppTheme.txtSize11,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              h10,
              const CarouselSliderAndDotsIndicatorsWidget(),

              // h10,
              OurServicesWidget(size: size)
            ],
          ),
        ),
      ),
    );
  }
}

class WalletCardWidget extends StatelessWidget {
  const WalletCardWidget({
    super.key,
    required this.size,
    required this.walletType,
  });

  final Size size;
  final List<String> walletType;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: walletType.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
              child: Container(
                color: Colors.grey.shade300,
                width: size.width * 0.8,
                height: 80,
                child: Column(
                  children: [
                    Container(
                      height: 40,
                      color: Colors.grey.shade300,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 2),
                      child: Row(
                        children: [
                          Image.asset("assets/images/wallet.png"),
                          w10,
                          Text(
                            walletType[index],
                            style: AppTheme.titleText,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      child: Divider(
                        thickness: 1,
                        height: 0,
                      ),
                    ),
                    Container(
                      color: Colors.grey.shade300,
                      height: 40,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 6),
                      child: Row(
                        children: [
                          Text(
                            '10000.00',
                            style: AppTheme.titleText.copyWith(fontSize: 21),
                          ),
                          Text(
                            ' (MMK)',
                            style: AppTheme.titleText,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class CarouselSliderAndDotsIndicatorsWidget extends StatefulWidget {
  const CarouselSliderAndDotsIndicatorsWidget({super.key});

  @override
  State<CarouselSliderAndDotsIndicatorsWidget> createState() =>
      _CarouselSliderAndDotsIndicatorsWidgetState();
}

class _CarouselSliderAndDotsIndicatorsWidgetState
    extends State<CarouselSliderAndDotsIndicatorsWidget> {
  int _activeIndex = 0;

  List<Widget> gameList = [
    ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(
        'assets/images/valorant_bg.png',
        // width: 1000,
        fit: BoxFit.cover,
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(
        'assets/images/valorant_bg.png',
        fit: BoxFit.cover,
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(
        'assets/images/valorant_bg.png',
        fit: BoxFit.cover,
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(
        'assets/images/valorant_bg.png',
        fit: BoxFit.cover,
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: pdAll12,
      child: SizedBox(
        height: 150,
        width: size.width,
        child: Column(
          children: [
            h6,
            Container(
              height: 122,
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                // color: AppColor.black,
              ),
              child: CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,

                  // aspectRatio: 3.0,

                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _activeIndex = index;
                    });
                  },
                ),
                items: gameList,
              ),
            ),
            h4,
            DotsIndicator(
              decorator: DotsDecorator(
                activeSize: const Size(4, 4),
                activeColor: AppColor.grey900,
                spacing: const EdgeInsets.all(2),
                size: const Size(4, 4),
              ),
              dotsCount: gameList.length,
              position: _activeIndex.toDouble(),
            ),
          ],
        ),
      ),
    );
  }
}
