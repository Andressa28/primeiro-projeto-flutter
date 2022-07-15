import 'package:flutter/material.dart';
import 'package:projeto_maquiagem/models/produtos_list.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key, required this.produto}) : super(key: key);

  final ProdutosList produto;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 183, 111, 196),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 112, 22, 128),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            // physics: NeverScrollableScrollPhysics(),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 430,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 30,
                  ),
                  width: MediaQuery.of(context).size.width,
                  // width: 10,
                  // height: 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.5),
                      ),
                    ],
                    image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                        Colors.purple.withOpacity(0.1),
                        BlendMode.multiply,
                      ),
                      image: NetworkImage(produto.heroImage),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text(
            'PRODUTO: ${produto.brandName}\n       AVALIAÇÕES: ${produto.rating}\n          CÓDIGO: ${produto.productId}',
            style: const TextStyle(
              color: Color.fromARGB(255, 58, 57, 57),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
