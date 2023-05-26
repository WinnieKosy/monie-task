// class ProductGridView extends StatelessWidget {
//   final List<Product> products;
//
//   const ProductGridView({Key? key, required this.products}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 2,
//         childAspectRatio: 0.7,
//       ),
//       itemCount: products.length,
//       itemBuilder: (context, index) {
//         final product = products[index];
//         return ProductItem(
//           product: product,
//           onTap: () {
//             final productViewModel =
//             Provider.of<ProductViewModel>(context, listen: false);
//             productViewModel.setProduct(product);
//             Navigator.pushNamed(context, '/product-detail');
//           },
//         );
//       },
//     );
//   }
// }
