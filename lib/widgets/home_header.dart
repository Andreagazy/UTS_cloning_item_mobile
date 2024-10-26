import 'package:flutter/material.dart';
import 'balance_card.dart';

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Opacity(
          opacity: 0.4,
          child: Image.asset(
            'asset/img/town_img.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: 230,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('asset/img/logo.png', height: 40),
                  Row(
                    children: [
                      _buildContainer(
                        child: Icon(Icons.favorite_border,
                            color: Colors.redAccent),
                      ),
                      SizedBox(width: 16),
                      _buildContainer(
                        child:
                            Icon(Icons.support_agent, color: Colors.redAccent),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16),
              BalanceCardWidget(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildContainer({required Widget child}) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: child,
    );
  }
}
