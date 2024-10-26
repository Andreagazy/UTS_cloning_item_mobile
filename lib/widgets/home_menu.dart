import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  Widget _menuIcon(IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, color: Colors.redAccent),
        SizedBox(height: 8),
        Text(label, style: TextStyle(fontSize: 12)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.grey.shade200,
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _menuIcon(Icons.account_balance_wallet, "Isi Saldo"),
          _menuIcon(Icons.money_outlined, "Tarik Saldo"),
          _menuIcon(Icons.send, "Kirim Uang"),
          _menuIcon(Icons.more_horiz, "Semua"),
        ],
      ),
    );
  }
}
