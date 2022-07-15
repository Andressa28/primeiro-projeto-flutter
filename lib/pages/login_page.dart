import 'package:flutter/material.dart';
import 'package:projeto_maquiagem/controllers/login_controller.dart';
import 'package:projeto_maquiagem/login/custom_button_login_component.dart';
import 'package:projeto_maquiagem/widgets/custom_button_login_component.dart';
import 'package:projeto_maquiagem/widgets/custom_botton_navigation_bar.dart';

class LoginPage extends StatelessWidget {
  final LoginController _controller = LoginController();

  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(      
        // appBar: AppBar(
        // backgroundColor: Colors.purple,
        // title: const Text('MAKEUP'),
        // centerTitle: true,
        // ),
         
        body: SingleChildScrollView(
          child: Container(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 30),
                const Text(
                  'MAKEUP',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                  ),
                ),

                const SizedBox(height: 10),
                SizedBox(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      'assets/images/maquiagens.jpg',
                      fit: BoxFit.cover,  
                    ),
                  ),
                ),
                       
                // ignore: prefer_const_constructors
                SizedBox(height: 20),

                CustomBottonNavigatonBar(                  
                  label: 'Usuário',
                  onChanged: _controller.setLogin,
                  obscureText: false, // ADICIONADO PARA CORREÇÃO DE ERRO
                ),
        
                const SizedBox(height: 10),

                 CustomBottonNavigatonBar(
                  label: 'Senha',
                  onChanged: _controller.setPass,
                  obscureText: true,
                ),
                       
                const SizedBox(height: 20),
                CustomButtonLoginComponent(
                  loginController: _controller
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
