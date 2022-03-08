// import 'package:auto_size_text/auto_size_text.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class Accordion extends HookWidget {
//   final bool? isInitiallyExpanded;
//   final String header;
//   const Accordion({Key? key, this.isInitiallyExpanded, required this.header})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final isExpanded = useState(isInitiallyExpanded ?? false);
//     return Container(
//       margin: EdgeInsets.only(
//         left: 0.035.sw,
//         right: 0.035.sw,
//       ),
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(7),
//         child: DecoratedBox(
//           decoration: const BoxDecoration(
//             border: Border(
//               top: BorderSide(
//                 color: Color.fromRGBO(113, 199, 216, 1),
//                 width: 3,
//               ),
//               left: BorderSide(color: AppColors.lightGray),
//               bottom: BorderSide(color: AppColors.lightGray),
//               right: BorderSide(color: AppColors.lightGray),
//             ),
//           ),
//           child: Padding(
//             padding: const EdgeInsets.only(top: 4.0),
//             child: ExpansionPanelList(
//               animationDuration: const Duration(seconds: 1),
//               children: [
//                 ExpansionPanel(
//                   body: Container(
//                     padding: const EdgeInsets.all(10),
//                     child: Column(
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: <Widget>[
//                             AutoSizeText(
//                               'Residential Address',
//                               style: TextStyle(
//                                 color: const Color.fromRGBO(112, 112, 112, 1),
//                                 fontSize: 18.sp,
//                               ),
//                               minFontSize: 15,
//                             ),
//                             AutoSizeText(
//                               'Dansoman',
//                               style: TextStyle(
//                                 color: const Color.fromRGBO(30, 34, 37, 1),
//                                 fontSize: 18.sp,
//                               ),
//                               minFontSize: 15,
//                             )
//                           ],
//                         ),
//                         const SizedBox(
//                           height: 10,
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: <Widget>[
//                             AutoSizeText(
//                               'GPS Address',
//                               style: TextStyle(
//                                 color: const Color.fromRGBO(112, 112, 112, 1),
//                                 fontSize: 18.sp,
//                               ),
//                               minFontSize: 15,
//                             ),
//                             AutoSizeText(
//                               'GA-051-6577',
//                               style: TextStyle(
//                                 color: const Color.fromRGBO(30, 34, 37, 1),
//                                 fontSize: 18.sp,
//                               ),
//                               minFontSize: 15,
//                             )
//                           ],
//                         ),
//                         const SizedBox(
//                           height: 10,
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: <Widget>[
//                             AutoSizeText(
//                               'Phone Number',
//                               style: TextStyle(
//                                 color: const Color.fromRGBO(112, 112, 112, 1),
//                                 fontSize: 18.sp,
//                               ),
//                               minFontSize: 15,
//                             ),
//                             AutoSizeText(
//                               '0205678904',
//                               style: TextStyle(
//                                 color: const Color.fromRGBO(30, 34, 37, 1),
//                                 fontSize: 18.sp,
//                               ),
//                               minFontSize: 15,
//                             )
//                           ],
//                         ),
//                         const SizedBox(
//                           height: 10,
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: <Widget>[
//                             AutoSizeText(
//                               'Account Created',
//                               style: TextStyle(
//                                 color: const Color.fromRGBO(112, 112, 112, 1),
//                                 fontSize: 18.sp,
//                               ),
//                               minFontSize: 15,
//                             ),
//                             AutoSizeText(
//                               '30-02-2020',
//                               style: TextStyle(
//                                 color: const Color.fromRGBO(30, 34, 37, 1),
//                                 fontSize: 18.sp,
//                               ),
//                               minFontSize: 15,
//                             ),
//                           ],
//                         ),
//                         const SizedBox(
//                           height: 10,
//                         ),
//                       ],
//                     ),
//                   ),
//                   headerBuilder: (BuildContext context, bool isExpanded) {
//                     return Container(
//                       padding: const EdgeInsets.all(10),
//                       child: Text(
//                         header,
//                         style: TextStyle(
//                           color: const Color.fromRGBO(244, 150, 0, 1),
//                           fontSize: 18.sp,
//                         ),
//                       ),
//                     );
//                   },
//                   isExpanded: isExpanded.value,
//                 )
//               ],
//               expansionCallback: (int item, bool status) {
//                 isExpanded.value = !isExpanded.value;
//               },
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
