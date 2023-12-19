// import 'package:flutter/material.dart';

// import 'package:flutter_easyloading/flutter_easyloading.dart';
// // import 'package:riverpodproject/services/snackbar_service.dart';

// class LoadingService {
//   void init() {
//     EasyLoading.instance
//       ..displayDuration = const Duration(milliseconds: 2000)
//       ..indicatorType = EasyLoadingIndicatorType.fadingCircle
//       ..loadingStyle = EasyLoadingStyle.dark
//       ..indicatorSize = 45.0
//       ..radius = 10.0
//       ..progressColor = const Color(0xff0066FF)
//       ..backgroundColor = const Color(0xffffffff)
//       ..indicatorColor = const Color(0xff0066FF)
//       ..textColor = const Color(0xff1A1A1A)
//       ..maskColor = const Color(0xff1A1A1A).withOpacity(.5)
//       ..userInteractions = true
//       ..dismissOnTap = false;
//   }

//   Future<void> showToast(String status,
//       {EasyLoadingToastPosition? toastPosition}) async {
//     await EasyLoading.showToast(status,
//         toastPosition: toastPosition ?? EasyLoadingToastPosition.bottom);
//   }

//   void show({String? status}) {
//     EasyLoading.show(status: status);
//   }

//   void showSuccess(String status) async {
//     dismiss();
//     Future.delayed(Duration.zero, () {
//       Snack.show(
//           content: status,
//           snackType: SnackType.success,
//           behavior: SnackBarBehavior.floating);
//     });

//     // EasyLoading.showSuccess(status);

//     // getSnackBar(status);
//   }

//   void showInfo(String status) async {
//     dismiss();
//     Future.delayed(Duration.zero, () {
//       Snack.show(
//           content: status,
//           snackType: SnackType.info,
//           behavior: SnackBarBehavior.floating);
//     });

//     // EasyLoading.showSuccess(status);

//     // getSnackBar(status);
//   }

//   void showProgress(double progress, {String? status}) {
//     EasyLoading.showProgress(progress, status: status);
//   }

//   void showError(String status) {
//     dismiss();

//     // if (status.contains("DioErrorType.other")) {
//     if (status.contains("DioErrorType.other")) {
//       final statusz = humanReadableErrors(status);
//       Future.delayed(Duration.zero, () {
//         Snack.show(
//             content: statusz,
//             snackType: SnackType.error,
//             behavior: SnackBarBehavior.floating);
//       });
//     } else {
//       Future.delayed(Duration.zero, () {
//         Snack.show(
//             content: status,
//             snackType: SnackType.error,
//             behavior: SnackBarBehavior.floating);
//       });
//     }
//     // Future.delayed(Duration.zero, () {
//     //   Snack.show(
//     //       content: status,
//     //       snackType: SnackType.error,
//     //       behavior: SnackBarBehavior.floating);
//     // });
//     // EasyLoading.showError(status);
//   }

//   void dismiss() {
//     EasyLoading.dismiss();
//   }
// }

// // write a function that returns human readable errors

// String humanReadableErrors(String error) {
//   final statusz = error.split("Source stack").first;
//   return statusz.contains("SocketException")
//       ? "Error: No network connection"
//       : statusz;
// }
