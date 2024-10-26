import 'package:flutter/material.dart';
import '../widgets/footer.dart';
import '../widgets/transactionItems.dart';
import 'home_page.dart';
import 'profile.dart';

class HistoryPage extends StatefulWidget {
  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  bool isPendingSelected = false;
  int _currentIndex = 1;

  void _onTabSelected(bool isPending) {
    setState(() => isPendingSelected = isPending);
  }

  void _onNavTapped(int index) {
    setState(() => _currentIndex = index);
    switch (index) {
      case 0:
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => HomePage()));
        break;
      case 1:
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => HistoryPage()));
        break;
      case 4:
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => ProfilePage()));
        break;
    }
  }

  Widget _buildTab(String title, bool selected) {
    return GestureDetector(
      onTap: () => _onTabSelected(title == "Pending"),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 16,
                color: selected ? Colors.black : Colors.grey,
                fontWeight: FontWeight.bold),
          ),
          if (selected)
            Container(
                margin: EdgeInsets.only(top: 8),
                height: 3,
                width: 60,
                color: Colors.red),
        ],
      ),
    );
  }

  Widget _buildPendingContent() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('asset/img/pending.png', width: 700, height: 200),
        SizedBox(height: 16),
        Text("Semua transaksi sudah beres!",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            textAlign: TextAlign.center),
        SizedBox(height: 8),
        Text(
            "Setiap transaksi yang masih dalam proses akan\nmuncul di halaman ini",
            textAlign: TextAlign.center),
      ],
    );
  }

  Widget _buildCompletedContent() {
    final transactions = [
      {
        "title": "Pay Merchant",
        "amount": "Rp45.400",
        "date": "15 Sep 2024, 17:32 WIB",
        "status": "Success",
        "desc": "Indomaret_purchase"
      },
      {
        "title": "Pay Merchant",
        "amount": "Rp50.000",
        "date": "16 Sep 2024, 14:20 WIB",
        "status": "Success",
        "desc": "Alfamart_payment"
      },
      {
        "title": "Pay QRIS",
        "amount": "Rp30.000",
        "date": "17 Sep 2024, 11:45 WIB",
        "status": "Success",
        "desc": "QRIS_payment"
      },
      {
        "title": "Pay QRIS",
        "amount": "Rp70.000",
        "date": "18 Sep 2024, 07:45 WIB",
        "status": "Success",
        "desc": "QRIS_payment"
      },
    ];

    return ListView.builder(
      padding: EdgeInsets.all(16),
      itemCount: transactions.length,
      itemBuilder: (context, index) {
        final item = transactions[index];
        return TransactionItem(
          title: item["title"] ?? '',
          amount: item["amount"] ?? '',
          date: item["date"] ?? '',
          status: item["status"] ?? '',
          description: item["desc"] ?? '',
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text('Riwayat Transaksi', style: TextStyle(color: Colors.black)),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildTab("Pending", isPendingSelected),
                _buildTab("Selesai", !isPendingSelected),
              ],
            ),
          ),
          Expanded(
              child: isPendingSelected
                  ? _buildPendingContent()
                  : _buildCompletedContent()),
        ],
      ),
      bottomNavigationBar:
          Footer(currentIndex: _currentIndex, onItemTapped: _onNavTapped),
    );
  }
}
