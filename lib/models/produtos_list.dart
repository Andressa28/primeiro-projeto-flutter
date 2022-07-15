// Criando os construtores

// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

class ProdutosList {
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


  ProdutosList({
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
  });

  factory ProdutosList.fromJson(dynamic json) {
    return ProdutosList(
      brandName: json['brandName'] as String,
      rating: json['rating'] as String,
      productId: json['productId'] as String,
      heroImage: json['heroImage'] as String,
      // seoMetaDescription: json['seoMetaDescription'] as String,
      // seoTitle: json['seoTitle'] as String,
      // imageAltText: json['imageAltText'] as String,
      // listPrice: json['listPrice'] as String,
      // displayName: json['displayName'] as String,
      // totalProducts: json['totalProducts'] as String,

    );
  }

  static List<ProdutosList> produtosFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return ProdutosList.fromJson(data);
    }).toList();
  }

  @override
  String toString() {
    return 'Produtos {brandName: $brandName, rating: $rating, productId: $productId, heroImage: $heroImage}';
    // seoMetaDescription: $seoMetaDescription, seoTitle: $seoTitle, imageAltText: $imageAltText, listPrice: $listPrice, displayName: $displayName, totalProducts: $totalProducts
  }
}
