import 'package:flutter/material.dart';
import 'package:projeto_maquiagem/controllers/produtos_list_controller.dart';
import 'package:projeto_maquiagem/models/produtos_list.dart';
import 'package:projeto_maquiagem/pages/details_page.dart';
import 'package:projeto_maquiagem/widgets/produto_card_item.dart';

class OnePage extends StatefulWidget {
  const OnePage({Key? key}) : super(key: key);

  @override
  State<OnePage> createState() => _OnePageState();
}

class _OnePageState extends State<OnePage> {

    late List<ProdutosList> _produtos = [];

     @override
  void initState() {
    super.initState();
    getProdutoModel();
  }

  void getProdutoModel() async {
    _produtos = await ProdutosListApi.getProdutosList();
    setState(() {
      // _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
          children: [
            // const SizedBox(height: 10),
            Container(
              // Tamanho da imagem
              height: 200,
              // width: size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/maquiagem.jpg"),
                  scale: 0.5,
                ),
                // color: Color(0xFFE9D5CA),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  // bottomRight: Radius.circular(40),
                ),
              ),
              child: Container(
                // alignment: Alignment.centerRight,
                // margin: const EdgeInsets.only(top: 20, right: 20),
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Realce a\n sua beleza!',
                      textAlign: TextAlign.center,
                      // style: Theme.of(context).textTheme.title.copyWith(
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                            color: Colors.grey[850],
                            fontWeight: FontWeight.bold,
                            fontSize: 36,
                          ),
                    ),
                    Text(
                      'Consulte aqui',
                      textAlign: TextAlign.center,
                      // style: Theme.of(context).textTheme.title.copyWith(
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                            color: const Color.fromARGB(255, 173, 135, 135),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            decoration: TextDecoration.underline,
                          ),
                    ),
                  ],
                ),
              ),
            ),

            // Container Categorias de produtos
            Container(
              margin: const EdgeInsets.only(top: 12, bottom: 5),
              child: Text(
                'Produtos',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline6!.copyWith(
                      color: Colors.grey[900],
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),

            // Body com erro
            // body: _isLoading
            // ? Center(
            //   child: CircularProgressIndicator(),
            // ):

            SizedBox(
              height: 300,
              // width: size.width * 0.35,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _produtos.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => DetailsPage(produto: _produtos[index]),
                      ),
                    ),
                    child: Stack(
                      children: [
                        ProdutoCardItem(
                          brandName: _produtos[index].brandName,
                          rating: _produtos[index].rating,
                          productId: _produtos[index].productId,
                          heroImage: _produtos[index].heroImage,
                          // seoMetaDescription: _produtos[index].seoMetaDescription,
                          // seoTitle: _produtos[index].seoTitle,
                          // imageAltText: _produtos[index].imageAltText,
                          // listPrice: _produtos[index].listPrice,
                          // displayName: _produtos[index].displayName,
                          // totalProducts: _produtos[index].totalProducts,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      );
  }
}
