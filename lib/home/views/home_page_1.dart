// import 'package:flutter/material.dart';
// import 'package:fluttert1ex1/models/user.dart';
// import 'package:fluttert1ex1/views/login_page.dart';
//
// class HomePageAuth extends StatelessWidget {
//   User _user;
//
//   HomePageAuth({required User user}) : _user = user;
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Bienvenue ${this._user.name}')),
//       drawer: Drawer(
//         child: ListView(
//           children: [
//             SizedBox(
//               height: 210.0,
//               child: DrawerHeader(
//                 decoration: BoxDecoration(color: Colors.blue),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     ClipRRect(
//                       borderRadius: BorderRadius.circular(100),
//                       child:   Image.asset(
//                         height: 100.0,
//                         width: 100.0,
//                         fit: BoxFit.fill,
//                         "./assets/images/man.jpg",
//                       ),
//                     ),
//                     SizedBox(height: 12),
//                     Text(
//                       _user.name,
//                       style: TextStyle(color: Colors.white),
//
//                     ),
//                     SizedBox(height: 12),
//                     Text(
//                         _user.email,
//                       style: TextStyle(color: Colors.white),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//             ListTile(
//               leading: Icon(Icons.logout),
//               title: Text('Logout'),
//               onTap: () {
//                 Navigator.pop(context);
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => LoginPage(!_user)),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//       body: Center(child: Text('Logged')),
//     );
//   }
// }
