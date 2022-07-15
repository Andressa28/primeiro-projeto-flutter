import 'package:flutter/material.dart';
import 'package:projeto_maquiagem/pages/categorias_page.dart';
import 'package:projeto_maquiagem/pages/favoritos_page.dart';
import 'package:projeto_maquiagem/pages/marcas_page.dart';
import 'package:projeto_maquiagem/pages/one_page.dart';
import 'package:projeto_maquiagem/pages/perfil_page.dart';
import 'package:projeto_maquiagem/services/prefs_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  // List<ProdutosList> _produtos = [];
  // bool _isLoading = true;

  final List<Widget> _telas = [
    const FavoritosPage(),
    const MarcasPage(),
    const OnePage(),
    const CategoriasPage(),
    const PerfilPage(),
  ];


  // int _selectedIndex = 0;
  int _paginaAtual = 2;

  void _onItemTapped(int index) {
    setState(() {
      _paginaAtual = index;
    });
  }

  Widget _bottomNavigationBar() {
    return BottomNavigationBar(
      elevation: 5,
      type: BottomNavigationBarType.fixed,
      currentIndex: _paginaAtual,
      selectedFontSize: 16,
      unselectedFontSize: 16,
      selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
      unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
      selectedItemColor: const Color.fromARGB(255, 112, 22, 128),
      onTap: _onItemTapped,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          // backgroundColor: Color.fromARGB(255, 165, 85, 180),
          label: 'Favoritos',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.branding_watermark),
          // backgroundColor: Color.fromARGB(255, 112, 22, 128),
          label: 'Marcas',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          // backgroundColor: Color.fromARGB(255, 165, 85, 180),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.category),
          // backgroundColor: Color.fromARGB(255, 165, 85, 180),
          label: 'Categorias',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          // backgroundColor: Color.fromARGB(255, 112, 22, 128),
          label: 'Perfil',
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 183, 111, 196),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 112, 22, 128),
        // backgroundColor: const Color.fromARGB(255, 223, 167, 215),
        title: const Text('Bem vindo(a)!'),
        actions: [
          IconButton(
            onPressed: () {
              PrefsService.logout();
              Navigator.of(context)
                  .pushNamedAndRemoveUntil('/login', (_) => true);
            },
            icon: const Icon(Icons.logout),
          )
        ],

        // title: Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: const [
        //     SizedBox(width: 10),
        //     Text('MAKEUP'),
        //   ],
        // ),
        // centerTitle: true,
      ),

      body: _telas[_paginaAtual],

      bottomNavigationBar: _bottomNavigationBar(),
      
    );
  }
}
