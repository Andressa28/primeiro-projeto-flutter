// // Criando os construtores

// class ProdutosDetails {
//   final String displayName;
//   final String longDescription;
//   final String lovesCount;
//   final String ref;
//   final String ingredientsDesc;
//   final String size;
//   final String listPrice;
//   final String quickLookDescription;

//   ProdutosDetails({
//     required this.displayName,
//     required this.longDescription,
//     required this.lovesCount,
//     required this.ref,
//     required this.ingredientsDesc,
//     required this.size,
//     required this.listPrice,
//     required this.quickLookDescription,
//   });

//   factory ProdutosDetails.fromJson(dynamic json) {
//     return ProdutosDetails(
//       displayName: json['displayName'] as String,
//       longDescription: json['longDescription'] as String,
//       lovesCount: json['lovesCount'] as String,
//       ref: json['ref'] as String,
//       ingredientsDesc: json['ingredientsDesc'] as String,
//       size: json['size'] as String,
//       listPrice: json['listPrice'] as String,
//       quickLookDescription: json['quickLookDescriptionn'] as String,
//     );
//   }

//   static List<ProdutosDetails> produtosFromSnapshot(List snapshot) {
//     return snapshot.map((data) {
//       return ProdutosDetails.fromJson(data);
//     }).toList();
//   }

//   @override
//   String toString() {
//     return 'Produtos {displayName: $displayName, longDescription: $longDescription, lovesCount: $lovesCount, ref: $ref, ingredientsDesc: $ingredientsDesc, size: $size, listPrice: $listPrice, quickLookDescription: $quickLookDescription}';
//   }
// }
