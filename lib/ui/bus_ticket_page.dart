import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../theme/app_theme.dart';
import '../theme/color.dart';
import '../theme/size.dart';

class BusTicketPage extends StatelessWidget {
  const BusTicketPage({super.key});

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
                      'Bus Ticket',
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
                      'Nationality',
                      style: AppTheme.titleText,
                    ),
                  ),
                  h10,
                  TextFormField(
                    decoration: inputDecoration.copyWith(
                        suffixIcon: Image.asset('assets/images/selection.png')),
                  ),
                  h10,
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Location to Destination',
                      style: AppTheme.titleText,
                    ),
                  ),
                  h10,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: size.width * 0.35,
                        child: TextFormField(
                          decoration: inputDecoration.copyWith(
                            prefixText: 'From',
                            prefixStyle: AppTheme.txtSize11,
                            suffixIcon:
                                Image.asset('assets/images/selection.png'),
                          ),
                        ),
                      ),
                      Image.asset('assets/images/right _arrow.png'),
                      SizedBox(
                        width: size.width * 0.35,
                        child: TextFormField(
                          decoration: inputDecoration.copyWith(
                            prefixText: 'To',
                            prefixStyle: AppTheme.txtSize11,
                            suffixIcon:
                                Image.asset('assets/images/selection.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  h10,
                  TextFormField(
                    initialValue: 'Date',
                    // textAlign: TextAlign.center,
                    decoration: inputDecoration.copyWith(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(left: 14.0),
                        child: Image.asset('assets/images/CalendarDate.png'),
                      ),
                      prefixStyle: AppTheme.txtSize11,
                    ),
                  ),
                  h10,
                  SizedBox(
                    width: size.width,
                    height: 40,
                    child: Row(
                      children: [
                        Container(
                          width: 50,
                          height: 40,
                          decoration: BoxDecoration(
                            color: AppColor.grey100,
                            border: Border.fromBorderSide(
                              BorderSide(
                                color: Colors.grey.shade400,
                              ),
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                          ),
                          child: Image.asset(
                            "assets/images/Dash.png",
                          ),
                        ),
                        Container(
                          width: size.width - 125,
                          height: 40,
                          decoration: BoxDecoration(
                            color: AppColor.grey100,
                            border: Border(
                              left: const BorderSide(
                                color: Colors.transparent,
                              ),
                              right: const BorderSide(
                                color: Colors.transparent,
                              ),
                              bottom: BorderSide(
                                color: Colors.grey.shade400,
                              ),
                              top: BorderSide(
                                color: Colors.grey.shade400,
                              ),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              '1 - Seat',
                              style: AppTheme.titleText,
                            ),
                          ),
                        ),
                        Container(
                          width: 50,
                          height: 40,
                          decoration: BoxDecoration(
                            color: AppColor.grey100,
                            border: Border.fromBorderSide(
                              BorderSide(
                                color: Colors.grey.shade400,
                              ),
                            ),
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                          child: Image.asset("assets/images/plus.png"),
                        ),
                      ],
                    ),
                  ),

                  // InputQty(
                  //   // borderShape: BorderShapeBtn.square,
                  //   maxVal: 5.0,
                  //   btnColor1: AppColor.grey100,

                  //   boxDecoration: BoxDecoration(
                  //     // color: AppColor.burlyWood,
                  //     border: Border.fromBorderSide(
                  //         BorderSide(color: AppColor.black)),
                  //     borderRadius: const BorderRadius.all(Radius.circular(30)),
                  //   ),
                  //   initVal: 1.0,

                  //   minusBtn: Container(
                  //     decoration: const BoxDecoration(
                  //       border: Border(
                  //         right: BorderSide(
                  //             color: Colors.red,
                  //             width: 2,
                  //             style: BorderStyle.solid),
                  //       ),
                  //     ),
                  //   ),

                  //   plusBtn: Container(
                  //     decoration: const BoxDecoration(
                  //       border: Border(
                  //         left: BorderSide(
                  //             color: Colors.red,
                  //             width: 2,
                  //             style: BorderStyle.solid),
                  //       ),
                  //     ),
                  //   ),
                  //   // textFieldDecoration:
                  //   //     inputDecoration.copyWith(fillColor: AppColor.grey100,),
                  //   minVal: -100.0,
                  //   onQtyChanged: (val) {},
                  // ),
                  h20,
                  ElevatedButton(
                    style: btnStyle,
                    onPressed: () {
                      // context.pushNamed(serviceConfirm);
                    },
                    child: Text(
                      'Search Now',
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
