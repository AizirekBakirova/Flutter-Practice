// import 'package:eco_market/features/presentation/pages/busket_page.dart';
// import 'package:eco_market/features/presentation/pages/history_page.dart';
// import 'package:eco_market/features/presentation/pages/home_page.dart';
// import 'package:eco_market/features/presentation/pages/info_page.dart';
// import 'package:eco_market/features/presentation/theme/app_colors.dart';
// import 'package:flutter/material.dart';

// class BottomNavBar extends StatefulWidget {
//   const BottomNavBar({super.key});

//   @override
//   State<BottomNavBar> createState() => _BottomNavBarState();
// }

// class _BottomNavBarState extends State<BottomNavBar> {
//   int currentIndex = 0;
//   final pages = [
//     const HomePage(),
//     const BusketPage(),
//     const HistoryPage(),
//     const InfoPage()
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: IndexedStack(index: currentIndex, children: pages),
//         bottomNavigationBar: BottomNavigationBar(
//           selectedItemColor: AppColors.selectedItemColor,
//           unselectedItemColor: AppColors.unselectedItemColor,
//           unselectedLabelStyle: const TextStyle(
//             color: Colors.black54,
//             fontSize: 12,
//             fontWeight: FontWeight.w500,
//           ),
//           type: BottomNavigationBarType.fixed,
//           currentIndex: currentIndex,
//           onTap: (index) {
//             setState(() {
//               currentIndex = index;
//             });
//           },
//           items: const <BottomNavigationBarItem>[
//             BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.home,
//               ),
//               label: 'Главная',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.shopping_bag_outlined,
//               ),
//               label: 'Корзина',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.history,
//               ),
//               label: 'История',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.help_center_outlined,
//               ),
//               label: 'Инфо',
//             ),
//           ],
//         ));
//   }
// }
