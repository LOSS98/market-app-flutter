import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.price,
    required this.image,
    required this.description,
    required this.sellerLogo,
    required this.sellerCountry,
    required this.sellerName,
    required this.title,
  });

  final double price;
  final String image;
  final String description;
  final String sellerLogo;
  final String sellerCountry;
  final String sellerName;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5, // Ombre pour donner un effet 3D
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image en haut
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.asset(
              image, // Image d'exemple
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          // Contenu de la Card
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Avatar
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage(sellerLogo), // Image d'exemple
                    ),
                    SizedBox(width: 10),
                    // Texte du titre
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          sellerName,
                          style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Text(
                          sellerCountry,
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
                Text(price.toString() + " €",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),

          // Description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Text(
              description,
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.black54),
            ),
          ),

          SizedBox(height: 10),

          // Boutons
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Bouton Buy
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  child: Text("Buy",
                    style: TextStyle(color: Colors.white),
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