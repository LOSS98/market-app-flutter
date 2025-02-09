import 'package:flutter/material.dart';
import 'package:market_app/widgets/product_card.dart';
import 'package:market_app/data/product_data.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("🏠 Accueil")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Bienvenue sur l'accueil !",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded( // Prend tout l'espace disponible
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return ProductCard(
                    sellerLogo: product["sellerLogo"],
                    sellerName: product["sellerName"],
                    sellerCountry: product["sellerCountry"],
                    title: product["title"],
                    description: product["description"],
                    image: product["image"],
                    price: product["price"],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'profile_page.dart';
// import 'settings_page.dart';
//
// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Accueil")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pushNamed(context, '/profile');
//               },
//               child: Text("Aller au Profil"),
//             ),
//
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pushNamed(context, '/settings');
//               },
//               child: Text("Aller aux Paramètres"),
//             ),
//
//           ],
//         ),
//       ),
//     );
//   }
// }
