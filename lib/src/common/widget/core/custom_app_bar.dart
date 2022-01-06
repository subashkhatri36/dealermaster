// import 'package:flutter/material.dart';

// class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
//   final bool showBackButton;
//   const CustomAppBar({Key? key, this.showBackButton = false}) : super(key: key);

//   @override
//   Size get preferredSize => const Size.fromHeight(60);

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           GestureDetector(
//             //onTap: () 
//             child: Container(
//               height: 60,
//               width: 60,
//               color: kBlackColor,
//               child: Image.asset(
//                 ImageAsset.appLogo,
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           showBackButton
//               ? SizedBox(
//                   height: 60,
//                   width: 60,
//                   child: GestureDetector(
//                     onTap: () => Get.back(),
//                     child: Image.asset(
//                       IconAsset.backIcon,
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 )
//               : Container(),
//         ],
//       ),
//     );
//   }
// }
