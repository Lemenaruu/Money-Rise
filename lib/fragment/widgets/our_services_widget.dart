import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:money_rise/constants.dart';
import 'package:money_rise/providers/router_provider.dart';

import '../../theme/app_theme.dart';
import '../../theme/size.dart';

class OurServicesWidget extends StatelessWidget {
  OurServicesWidget({
    super.key,
    required this.size,
  });

  final Size size;
  List<String> imageUrls = [
    ImageConstants().pubg,
    ImageConstants().valorant,
    ImageConstants().busticket,
    ImageConstants().others,
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: pdAll12,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
        child: Container(
          width: size.width,
          color: Colors.grey.shade300,
          height: 125,
          child: Column(
            children: [
              Container(
                height: 40,
                color: Colors.grey.shade300,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                child: Row(
                  children: [
                    Text(
                      'Our Services',
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
                height: 80,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    serviceImageAndName(
                        imageUrl: ImageConstants().pubg, name: 'PUBG'),
                    GestureDetector(
                      onTap: () {
                        context.pushNamed(service);
                      },
                      child: serviceImageAndName(
                          imageUrl: ImageConstants().valorant, name: 'Valorant'),
                    ),
                    GestureDetector(
                      onTap: () {
                        context.pushNamed(busTicket);
                      },
                      child: serviceImageAndName(
                          imageUrl: ImageConstants().valorant,
                          name: 'Bus Ticket'),
                    ),
                    serviceImageAndName(
                        imageUrl: ImageConstants().others, name: 'Others'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget serviceImageAndName({
    required String imageUrl,
    required String name,
  }) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.asset(
            imageUrl,
            height: 45,
            // color: AppColor.black,
            width: 45,
            fit: BoxFit.cover,
          ),
        ),
        h6,
        Text(
          name,
          style: AppTheme.txtSize11,
        ),
      ],
    );
  }
}
