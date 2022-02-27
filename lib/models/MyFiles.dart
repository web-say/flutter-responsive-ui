import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui/constants.dart';

class CloudStorageInfo {
  final String svgSrc, title, totalStorage;
  final int numOfFiles, percentage;
  final Color color;

  CloudStorageInfo(
      {required this.svgSrc,
      required this.title,
      required this.totalStorage,
      required this.numOfFiles,
      required this.percentage,
      required this.color});
}

List demoMyFiles = [
  CloudStorageInfo(
    title: 'Documents',
    numOfFiles: 1328,
    svgSrc: "assets/icons/menu_doc.svg",
    totalStorage: "1.9GB",
    color: primaryColor,
    percentage: 35,
  ),
  CloudStorageInfo(
    title: 'Google Drive',
    numOfFiles: 1328,
    svgSrc: "assets/icons/menu_doc.svg",
    totalStorage: "1.9GB",
    color: const Color(0xFFFFCF26),
    percentage: 20,
  ),
  CloudStorageInfo(
    title: 'One Drive',
    numOfFiles: 1328,
    svgSrc: "assets/icons/menu_doc.svg",
    totalStorage: "1.9GB",
    color: const Color(0xFFEE2727),
    percentage: 35,
  ),
  CloudStorageInfo(
    title: 'Documents',
    numOfFiles: 5328,
    svgSrc: "assets/icons/menu_doc.svg",
    totalStorage: "1.9GB",
    color: primaryColor,
    percentage: 80,
  ),
];
