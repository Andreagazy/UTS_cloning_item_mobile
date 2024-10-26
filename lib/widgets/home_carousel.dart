import 'package:flutter/material.dart';

class CarouselWidget extends StatefulWidget {
  @override
  _CarouselWidgetState createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  final PageController _pageController = PageController();
  int _currentImageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentImageIndex = index;
              });
            },
            children: [
              _buildImageSlide('asset/img/promo1.jpg'),
              _buildImageSlide('asset/img/promo2.jpg'),
              _buildImageSlide('asset/img/promo3.jpg'),
              _buildImageSlide('asset/img/promo4.jpg'),
              _buildImageSlide('asset/img/promo5.jpg'),
            ],
          ),
        ),
        SizedBox(height: 8),
        Align(
          alignment: Alignment.centerLeft, // Aligns dots to the left
          child: Container(
            margin: EdgeInsets.only(left: 16), // Optional margin for padding
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate(
                5,
                (index) => _buildDot(index == _currentImageIndex),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildImageSlide(String imagePath) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildDot(bool isActive) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2),
      width: isActive ? 12 : 8,
      height: isActive ? 12 : 8,
      decoration: BoxDecoration(
        color: isActive ? Colors.redAccent : Colors.grey,
        shape: BoxShape.circle,
      ),
    );
  }
}
