import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  final int currentIndex; // Current index to highlight
  final Function(int) onItemTapped; // Callback function to handle tap

  const Footer({
    Key? key,
    required this.currentIndex,
    required this.onItemTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: currentIndex == 0 ? Colors.red : Colors.grey),
          label: 'Beranda',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.history, color: currentIndex == 1 ? Colors.red : Colors.grey),
          label: 'Riwayat',
        ),
        BottomNavigationBarItem(
          icon: Container(
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.payment, color: Colors.white),
          ),
          label: 'Bayar',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.message, color: currentIndex == 3 ? Colors.red : Colors.grey),
          label: 'Pesan',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person, color: currentIndex == 4 ? Colors.red : Colors.grey),
          label: 'Profil',
        ),
      ],
      currentIndex: currentIndex,
      onTap: onItemTapped,
      selectedItemColor: Colors.red,
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
    );
  }
}
