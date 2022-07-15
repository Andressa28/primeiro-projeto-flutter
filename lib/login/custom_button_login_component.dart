// import 'package:flutter/material.dart';
// import 'package:projeto_maquiagem/controllers/login_controller.dart';

// class CustomButtonLoginComponent extends StatelessWidget {

//   final LoginController loginController;

//   const CustomButtonLoginComponent({Key? key,
//    required this.loginController}) : super(key: key
//   );

//   @override
//   Widget build(BuildContext context) {
//     return ValueListenableBuilder<bool>(
//       valueListenable: loginController.inLoader,
//       builder: (_, inLoader, __) => inLoader
//       ? const CircularProgressIndicator()
//       : SizedBox(
//         height: 50,
//         width: 200,
//         child: ElevatedButton(
//             onPressed: () {
//               loginController.auth().then(
//                 (result) {
//                   if (result) {
//                     Navigator.of(context).pushReplacementNamed('/one');
//                   } else {
//                     ScaffoldMessenger.of(context).showSnackBar(
//                       const SnackBar(
//                         content: Text('Usuário ou senha incorretos!'),
//                         duration: Duration(seconds: 3),
//                       ),
//                     );
//                   }
//                 },
//               );
//             },
//             child: const Text('Login'),
//           ),
//       ),
//     );
//   }
// }
