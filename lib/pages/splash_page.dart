import 'package:flutter/material.dart';
import 'package:projeto_maquiagem/services/prefs_service.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // é a primeira coisa a ser executada qdo a page é criada
    super.initState();

    // wait recebe uma lista de futures para aguardar a autenticação
    Future.wait([
      PrefsService.isAuth(), // verificar se já está autenticado
      Future.delayed(const Duration(seconds: 4)),
    ]).then((value) => value[0]
        ? Navigator.of(context).pushReplacementNamed('/home')
        : Navigator.of(context).pushReplacementNamed('/login'));

    Future.delayed(const Duration(seconds: 4))
        .then((_) => Navigator.of(context).pushReplacementNamed('/login'));
  }

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   color: Colors.purple.shade400,
    //   child: const Center(
    //       child: CircularProgressIndicator(
    //     color: Color.fromARGB(255, 242, 210, 247), // Altera a cor padrão que está na main
    //   )),
    // );

    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 10),
                SizedBox(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      'assets/images/gif_makeAdoro.gif',
                      fit: BoxFit.cover,  
                    ),
                  ),
                ),
              ]))
    );

    // Splash com logo do flutter
    //   return Scaffold(
    //     body: Center(
    //       child: Stack (
    //         alignment: Alignment.center,
    //         children: [
    //          SizedBox(
    //           height: MediaQuery.of(context).size.height,
    //           width: MediaQuery.of(context).size.width,
    //           child: Column(
    //             crossAxisAlignment: CrossAxisAlignment.center,
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: const [
    //               FlutterLogo(
    //                 size: 300,
    //                 textColor: Colors.blue,
    //                 style: FlutterLogoStyle.horizontal,
    //               ),
    //             ],
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
