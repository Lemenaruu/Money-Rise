import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';


import '../theme/app_theme.dart';
import '../theme/color.dart';
import '../theme/size.dart';

class BusTicketPage extends StatefulWidget {
  const BusTicketPage({super.key});

  @override
  State<BusTicketPage> createState() => _BusTicketPageState();
}

class _BusTicketPageState extends State<BusTicketPage> {
  TextEditingController nationalityController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController firstLocationController = TextEditingController();
  TextEditingController secondLocationController = TextEditingController();

  int _seatCount = 0;

  String dropdownValue = 'Myanmar';
  // DateTime? datePicker;
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
                    controller: nationalityController,
                    decoration: inputDecoration.copyWith(
                      suffixIcon: SizedBox(
                        width: 75,
                        child: DropdownButtonFormField(
                          decoration: inputDecoration2.copyWith(
                              suffixIcon:
                                  Image.asset('assets/images/selection.png')),
                          borderRadius: BorderRadius.circular(20),
                          style: AppTheme.titleText
                              .copyWith(fontWeight: FontWeight.normal),
                          icon: const SizedBox.shrink(),
                          elevation: 3,
                          isDense: true,
                          isExpanded: true,
                          dropdownColor: AppColor.white,
                          items: [
                            'Burmese',
                            'Others',
                          ].map<DropdownMenuItem>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(color: AppColor.black),
                              ),
                            );
                          }).toList(),
                          onChanged: (newValue) {
                            setState(() {
                              // dropdownValue = newValue;
                              nationalityController.text = newValue;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  h10,

                  // DropdownButtonFormField(
                  //   decoration: inputDecoration.copyWith(
                  //       fillColor: AppColor.white,
                  //       filled: true,
                  //       suffixIcon: Image.asset('assets/images/selection.png')),
                  //   borderRadius: BorderRadius.circular(20),
                  //   icon: const SizedBox.shrink(),
                  //   elevation: 1,
                  //   isDense: true,
                  //   isExpanded: true,
                  //   value: null,
                  //   dropdownColor: AppColor.white,
                  //   items: [
                  //     'Myanmar',
                  //     'English',
                  //   ].map<DropdownMenuItem>((String value) {
                  //     return DropdownMenuItem<String>(
                  //       alignment: Alignment.center,
                  //       value: value,
                  //       child: Text(
                  //         value,
                  //         style: AppTheme.titleText,
                  //       ),
                  //     );
                  //   }).toList(),
                  //   onChanged: (newValue) {
                  //     setState(() {
                  //       dropdownValue = newValue!;
                  //     });
                  //   },
                  // ),
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
                          controller: firstLocationController,
                          style: AppTheme.bodyText.copyWith(
                              fontWeight: FontWeight.bold,
                              color: AppColor.burlyWood),
                          textAlign: TextAlign.center,
                          decoration: inputDecoration.copyWith(
                            prefixText: 'From',
                            prefixStyle: AppTheme.bodyText,
                            suffixIcon: SizedBox(
                              width: 40,
                              child: DropdownButtonFormField(
                                decoration: inputDecoration2.copyWith(
                                    suffixIcon: Image.asset(
                                        'assets/images/selection.png')),
                                borderRadius: BorderRadius.circular(20),
                                icon: const SizedBox.shrink(),
                                elevation: 3,
                                isDense: true,
                                style: AppTheme.bodyText,
                                isExpanded: true,
                                dropdownColor: AppColor.white,
                                items: [
                                  'Yangon',
                                  'Mandalay',
                                  'NayPyiTaw',
                                  'Myawady',
                                ].map<DropdownMenuItem>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: TextStyle(color: AppColor.black),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (newValue) {
                                  setState(() {
                                    firstLocationController.text = newValue;
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                      Image.asset('assets/images/right _arrow.png'),
                      SizedBox(
                        width: size.width * 0.35,
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          style: AppTheme.bodyText.copyWith(
                              fontWeight: FontWeight.bold,
                              color: AppColor.burlyWood),
                          controller: secondLocationController,
                          decoration: inputDecoration.copyWith(
                            prefixText: 'To',
                            prefixStyle: AppTheme.bodyText,
                            suffixIcon: SizedBox(
                              width: 40,
                              child: DropdownButtonFormField(
                                style: AppTheme.bodyText,
                                decoration: inputDecoration2.copyWith(
                                    suffixIcon: Image.asset(
                                        'assets/images/selection.png')),
                                borderRadius: BorderRadius.circular(20),
                                icon: const SizedBox.shrink(),
                                elevation: 3,
                                isDense: true,
                                isExpanded: true,
                                dropdownColor: AppColor.white,
                                items: [
                                  'Yangon',
                                  'Mandalay',
                                  'NayPyiTaw',
                                  'Myawady',
                                ].map<DropdownMenuItem>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: TextStyle(color: AppColor.black),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (newValue) {
                                  setState(() {
                                    secondLocationController.text = newValue;
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  h10,
                  TextFormField(
                    controller: dateController,
                    style: AppTheme.titleText,
                    textAlign: TextAlign.center,
                    decoration: inputDecoration.copyWith(
                      hintText: "Date",
                      hintStyle: AppTheme.titleText,
                      prefixIcon: GestureDetector(
                        onTap: () async {
                          final newDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2100),
                          );

                          setState(() {
                            dateController.text =
                                DateFormat.yMEd().format(newDate!).toString();
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 14.0),
                          child: Image.asset('assets/images/CalendarDate.png'),
                        ),
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
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _seatCount != 0 ? _seatCount-- : _seatCount;
                            });
                          },
                          child: Container(
                            width: 50,
                            height: 40,
                            decoration: BoxDecoration(
                              color: AppColor.grey100,
                              // color: AppColor.burlyWood,
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
                            child: _seatCount < 2
                                ? Text(
                                    '$_seatCount - Seat',
                                    style: AppTheme.titleText,
                                  )
                                : Text(
                                    '$_seatCount - Seats',
                                    style: AppTheme.titleText,
                                  ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _seatCount++;
                            });
                          },
                          child: Container(
                            width: 50,
                            height: 40,
                            decoration: BoxDecoration(
                              color: AppColor.grey100,
                              // color: AppColor.burlyWood,
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
