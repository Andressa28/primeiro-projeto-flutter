import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

class ProdutoCardItem extends StatelessWidget {
  final String brandName;
  final String rating;
  final String productId;
  final String heroImage;
  // final String seoMetaDescription;
  // final String seoTitle;
  // final String imageAltText;
  // final String listPrice;
  // final String displayName;
  // final String totalProducts;

  const ProdutoCardItem({
    Key? key,
    required this.brandName,
    required this.rating,
    required this.productId,
    required this.heroImage,
    // required this.seoMetaDescription,
    // required this.seoTitle,
    // required this.imageAltText,
    // required this.listPrice,
    // required this.displayName,
    // required this.totalProducts,  
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 10, vertical: 5,
      ),
      // width: MediaQuery.of(context).size.width,
      width: 250,
      height: 250,
      decoration: BoxDecoration(
        color:const Color.fromARGB(255, 112, 22, 128),

        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.5),
          ),
        ],
        image: DecorationImage(
          colorFilter: ColorFilter.mode(
            Colors.purple.withOpacity(0.15),
            BlendMode.multiply,
          ),
          image: NetworkImage(heroImage),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 5, vertical: 10
              ),
              child: Text(
                // Nome do produto
                brandName,
                style: const TextStyle(
                  color: Color.fromARGB(137, 20, 20, 20),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                // textAlign: TextAlign.center,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  // padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Color.fromARGB(255, 240, 228, 114),
                        size: 30,
                      ),
                      const SizedBox(width: 7),
                      Text(rating),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.all(10),
                  // decoration: const BoxDecoration(
                  //   color: Colors.black.withOpacity(0.4),
                  //   borderRadius: BorderRadius.circular(15),
                  // ),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.favorite,
                        color: Color.fromARGB(255, 112, 22, 128),

                        size: 24,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
