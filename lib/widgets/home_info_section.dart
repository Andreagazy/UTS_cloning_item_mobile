import 'package:flutter/material.dart';

class InfoSectionWidget extends StatelessWidget {
  Widget _buildInfoSlide({
    required String imagePath,
    required String title,
    required String description,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius:
              BorderRadius.circular(12), // Adjust the border radius here
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            width: double.infinity,
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 12),
        // Title with margin
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        // Description with margin
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            description,
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Title with same margin as below elements
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            "Info Menarik",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 12),
        SizedBox(
          height: 270, // Set a height for the sliding area
          child: PageView(
            children: [
              _buildInfoSlide(
                imagePath: 'asset/img/promo2.jpg',
                title: 'Bayar Pake LinkAja',
                description:
                    'Tersedia di lebih dari 1 juta merchant seluruh Indonesia!',
              ),
              _buildInfoSlide(
                imagePath: 'asset/img/promo1.jpg',
                title: 'Promo LinkAja',
                description:
                    'Nikmati promo menarik dari berbagai merchant pilihan.',
              ),
              _buildInfoSlide(
                imagePath: 'asset/img/promo4.jpg',
                title: 'Diskon Spesial',
                description: 'Dapatkan diskon khusus hanya dengan LinkAja!',
              ),
            ],
          ),
        ),
        SizedBox(height: 8),
      ],
    );
  }
}
