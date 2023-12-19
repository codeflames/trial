// import 'package:another_flushbar/flushbar.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class SnackBarService {
//   final satoshiRegular14 = const TextStyle(
//     height: 1.35,
//     fontSize: 14,
//     fontWeight: FontWeight.w400,
//   );

//   final downloadingSnackBar = SnackBar(
//     content: Row(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: const [
//         // SvgPicture.asset(
//         //   R.svg.asset.download_icon.assetName,
//         //   height: 24.h,
//         //   width: 24.w,
//         // ),
//         Text('Downloading',
//             style: TextStyle(
//               height: 1.35,
//               fontSize: 14,
//               fontWeight: FontWeight.w400,
//             )),
//       ],
//     ),
//     duration: Duration(days: 1),
//     action: SnackBarAction(
//       label: '✕',
//       textColor: zero066FF,
//       onPressed: () {},
//     ),
//     behavior: SnackBarBehavior.floating,
//     shape: RoundedRectangleBorder(
//       side: BorderSide(color: zero066FF, width: 0.5),
//       borderRadius: BorderRadius.circular(4),
//     ),
//     backgroundColor: f5f9ff,
//   );

//   final downloadedSnackBar = SnackBar(
//     content: Row(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         SvgPicture.asset(
//           R.svg.asset.downloaded.assetName,
//           height: 24.h,
//           width: 24.w,
//         ),
//         Text(
//           'Downloaded',
//           style: satoshiRegular14.copyWith(color: fourDAF3F),
//         ),
//       ],
//     ),
//     duration: Duration(seconds: 2),
//     action: SnackBarAction(
//       label: '✕',
//       textColor: fourDAF3F,
//       onPressed: () {},
//     ),
//     behavior: SnackBarBehavior.floating,
//     shape: RoundedRectangleBorder(
//       side: BorderSide(color: fourDAF3F, width: 0.5),
//       borderRadius: BorderRadius.circular(4),
//     ),
//     backgroundColor: f1F9F0,
//   );
// }

// final kPadding = 8.0; // up to you

// class Snack {
//   /// show the snack bar
//   /// [content] is responsible for the text of the snack bar
//   static show({
//     required String content,
//     SnackType snackType = SnackType.info,
//     SnackBarBehavior behavior = SnackBarBehavior.fixed,
//   }) async {
//     await Flushbar(
//       message: content,
//       icon: _getSnackbarIcon(snackType),
//       borderColor: _getSnackbarColor(snackType),
//       borderRadius: BorderRadius.circular(4.0),
//       duration: Duration(seconds: 5),
//       margin: EdgeInsets.symmetric(horizontal: 20.w),
//       flushbarPosition: FlushbarPosition.TOP,
//       messageColor: _getSnackbarColor(snackType),
//       backgroundColor: _getSnackbarBgColor(snackType),

//       // leftBarIndicatorColor: Colors.blue[300],
//       mainButton: TextButton(
//         onPressed: () {
//           Navigator.pop(Get.context!);
//           // if (Get.isSnackbarOpen) {
//           //   Get.closeCurrentSnackbar();
//           // }
//         },
//         style: TextButton.styleFrom(
//           minimumSize: Size.zero,
//           padding: EdgeInsets.zero,
//         ),
//         child: Text(
//           '✕',
//           style: satoshiMedium16.copyWith(color: _getSnackbarColor(snackType)),
//         ),
//       ),
//     ).show(Get.context!);
//   }

//   static Color _getSnackbarColor(SnackType type) {
//     if (type == SnackType.error) return d52108;
//     if (type == SnackType.warning) return five0555C;
//     if (type == SnackType.info) return zero066FF;
//     if (type == SnackType.success) return fourDAF3F;
//     return Colors.white;
//   }

//   static Color _getSnackbarBgColor(SnackType type) {
//     if (type == SnackType.error) return fDF6F5;
//     if (type == SnackType.warning) return f8F8F8;
//     if (type == SnackType.info) return f5f9ff;
//     if (type == SnackType.success) return f8FCF7;
//     return Colors.white;
//   }

//   static Widget _getSnackbarIcon(SnackType type) {
//     if (type == SnackType.error) {
//       return SvgPicture.asset(R.svg.asset.danger_icon.assetName);
//     }
//     if (type == SnackType.warning) {
//       return SvgPicture.asset(R.svg.asset.info_circle_icon.assetName);
//     }
//     if (type == SnackType.info) {
//       return SvgPicture.asset(R.svg.asset.info_circle_icon.assetName);
//     }
//     if (type == SnackType.success) {
//       return SvgPicture.asset(R.svg.asset.tick_circle.assetName);
//     }
//     return Container();
//   }

//   static Color _getSnackbarTextColor(SnackType type) {
//     if (type == SnackType.error || type == SnackType.info) return Colors.white;

//     return const Color(0xff1C1C1C);
//   }
// }

// enum SnackType { info, warning, error, success }
