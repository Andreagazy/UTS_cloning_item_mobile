import 'package:flutter/material.dart';

class BalanceCardWidget extends StatelessWidget {
  Widget _balanceCard(String title, String value, {bool hasIcon = true}) {
    return Container(
      padding: EdgeInsets.only(left: 12, right: 50, top: 12, bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: TextStyle(color: Colors.black)),
              SizedBox(height: 2),
              Row(
                children: [
                  Text(value,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      )),
                  if (hasIcon) ...[
                    SizedBox(width: 8),
                    Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.red[600],
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 10,
                      ),
                    ),
                  ]
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.red[600],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hai, Andreagazy Iza Amerianto',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _balanceCard('Saldo Kamu', 'Rp0'),
                SizedBox(width: 16),
                _balanceCard('Saldo Bonus', '0'),
                SizedBox(width: 16),
                _balanceCard('MyPaylater', 'Aktifkan', hasIcon: false),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
