// import 'package:affinity_agency_mobile_app/presentation/core/colors.dart';
// import 'package:auto_size_text/auto_size_text.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// typedef OnTap = void Function();

// class FullWidthCardTile extends StatelessWidget {
//   final String? leadingIcon;
//   final String title;
//   final String? subTitle;
//   final String? trailingIcon;
//   final Color backgroundColor;
//   final Color? borderColor;
//   final OnTap onTap;
//   const FullWidthCardTile({
//     Key? key,
//     this.leadingIcon,
//     required this.title,
//     this.subTitle,
//     this.trailingIcon,
//     required this.backgroundColor,
//     this.borderColor,
//     required this.onTap,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(0.004.sh),
//       alignment: Alignment.center,
//       margin: EdgeInsets.only(left: 0.035.sw, right: 0.035.sw, top: 0.015.sh),
//       decoration: BoxDecoration(
//           color: backgroundColor,
//           borderRadius: BorderRadius.circular(7.0),
//           border: Border.all(color: borderColor ?? Colors.transparent)),
//       width: 1.sw,
//       child: ListTile(
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//         contentPadding:
//             const EdgeInsets.only(top: 4, bottom: 4, left: 6, right: 6),
//         onTap: onTap,
//         leading: leadingIcon == null
//             ? null
//             : SvgPicture.asset(
//                 leadingIcon!,
//                 height: 32,
//                 width: 32,
//               ),
//         title: AutoSizeText(
//           title,
//           style: Theme.of(context)
//               .textTheme
//               .subtitle1
//               ?.copyWith(color: AppColors.deepGray),
//           minFontSize: 16,
//         ),
//         subtitle: subTitle == null
//             ? null
//             : Text(
//                 subTitle!,
//                 style: Theme.of(context)
//                     .textTheme
//                     .subtitle2
//                     ?.copyWith(color: AppColors.lightGray),
//               ),
//         trailing: trailingIcon == null
//             ? null
//             : SvgPicture.asset(
//                 trailingIcon!,
//                 height: 28,
//                 width: 28,
//               ),
//       ),
//     );
//   }
// }
