import 'package:flutter/material.dart';
import 'package:money_rise/theme/color.dart';

const EdgeInsets pdHorizontal8 = EdgeInsets.symmetric(horizontal: 8);
const EdgeInsets pdHorizontal10 = EdgeInsets.symmetric(horizontal: 10);
const EdgeInsets pdHorizontal12 = EdgeInsets.symmetric(horizontal: 12);

const EdgeInsets pdvertical8 = EdgeInsets.symmetric(vertical: 8);
const EdgeInsets pdvertical10 = EdgeInsets.symmetric(vertical: 10);
const EdgeInsets pdvertical12 = EdgeInsets.symmetric(vertical: 12);

const EdgeInsets pdAll8 = EdgeInsets.all(8);
const EdgeInsets pdAll10 = EdgeInsets.all(10);
const EdgeInsets pdAll12 = EdgeInsets.all(12);

const SizedBox h4 = SizedBox(height: 4);
const SizedBox h6 = SizedBox(height: 6);
const SizedBox h8 = SizedBox(height: 8);
const SizedBox h10 = SizedBox(height: 10);
const SizedBox h20 = SizedBox(height: 20);
const SizedBox h30 = SizedBox(height: 30);
const SizedBox h40 = SizedBox(height: 40);

const SizedBox w6 = SizedBox(width: 6);
const SizedBox w8 = SizedBox(width: 8);
const SizedBox w10 = SizedBox(width: 10);
const SizedBox w12 = SizedBox(width: 12);

InputDecoration inputDecoration = InputDecoration(
  filled: true,
  fillColor: AppColor.white,

  // errorText: 'wrong',
  // labelText: 'Username',
  contentPadding: pdAll10,
  isDense: true,
  focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide(color: AppColor.white)),
  enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide(color: AppColor.white)),
  errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide(color: AppColor.white)),

  focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide(color: AppColor.white)),
);

InputDecoration inputDecoration2 = InputDecoration(
  filled: true,
  fillColor: AppColor.white,

  // errorText: 'wrong',
  // labelText: 'Username',
  contentPadding: pdAll10,
  isDense: true,

  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(30),
    borderSide: BorderSide(color: AppColor.white),
  ),

  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(30),
    borderSide: BorderSide(color: AppColor.white),
  ),
);

ButtonStyle btnStyle = ElevatedButton.styleFrom(
  elevation: 0,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30),
  ),
  minimumSize: const Size(double.infinity, 40),
);
ButtonStyle btnWhiteStyle = ElevatedButton.styleFrom(
  elevation: 0,
  minimumSize: const Size(double.infinity, 40),
  backgroundColor: AppColor.white,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30),
  ),
);



