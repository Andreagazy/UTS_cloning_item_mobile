import 'package:flutter/material.dart';
import '../widgets/footer.dart';
import '../widgets/settingList.dart'; // Import for list tiles
import '../widgets/lineBreak.dart'; // Import for dividers
import 'history.dart';
import 'home_page.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int currentIndex = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          SizedBox(height: 20),
          profileHeader(),
          thickLineBreak(),
          settingList('Tipe Akun', 'Basic'),
          lineBreak(),
          settingList('LinkAja Syariah', 'Tidak Aktif'),
          lineBreak(),
          settingListTanpaKeterangan('Metode Pembayaran'),
          lineBreak(),
          settingListTanpaKeterangan('Pengaturan Akun'),
          thickLineBreak(),
          settingList('Email', 'andreagazya@gmail.com'),
          lineBreak(),
          settingListTanpaKeterangan('Pemulihan Akun Lama'),
          lineBreak(),
          settingList('Pertanyaan Keamanan', 'Belum Diatur'),
          lineBreak(),
          settingListTanpaKeterangan('Pengaturan PIN'),
          lineBreak(),
          settingList('Bahasa', 'Indonesia'),
          thickLineBreak(),
          settingListTanpaKeterangan('Ketentuan Layanan'),
          lineBreak(),
          settingListTanpaKeterangan('Kebijakan Privasi'),
          lineBreak(),
          settingListTanpaKeterangan('Pusat Bantuan'),
          thickLineBreak(),
          logoutButton(),
          appVersion(),
        ],
      ),
      bottomNavigationBar: Footer(
        currentIndex: currentIndex,
        onItemTapped: navigateToPage,
      ),
    );
  }

  Widget profileHeader() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            // Use Expanded to give flexibility to the text
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Andreagazy Iza Amerianto',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                SizedBox(height: 4),
                Text('224172016', style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
          ClipOval(
            child: Image.asset(
              'asset/img/profile.jpg', // Ensure the path is correct
              width: 40, // Increase the width for better visibility
              height: 40, // Increase the height for better visibility
              fit: BoxFit.cover, // Ensure the image covers the circle
            ),
          ),
        ],
      );

  Widget logoutButton() => Center(
        child: TextButton(
          onPressed: () {},
          child: Text('Keluar',
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 16,
                  fontWeight: FontWeight.bold)),
        ),
      );

  Widget appVersion() => Center(
      child: Text('LinkAja v.4.37.1', style: TextStyle(color: Colors.grey)));

  void navigateToPage(int index) {
    setState(() => currentIndex = index);
    final pages = [HomePage(), HistoryPage(), null, null, ProfilePage()];
    if (pages[index] != null)
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => pages[index]!));
  }
}
