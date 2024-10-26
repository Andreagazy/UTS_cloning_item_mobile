import 'package:flutter/material.dart';
import '../widgets/footer.dart';
import '../widgets/home_header.dart';
import '../widgets/home_menu.dart';
import '../widgets/home_carousel.dart';
import '../widgets/home_info_section.dart';
import 'history.dart';
import 'profile.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: ListView(
        children: [
          HeaderWidget(),
          SizedBox(height: 16),
          MenuWidget(),
          SizedBox(height: 16),
          Container(
            height: 200, // Set a fixed height for the grid
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: GridView.count(
                crossAxisCount: 4,
                shrinkWrap: true,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  _buildIconWithLabel(Icons.phone_android, "Pulsa"),
                  _buildIconWithLabel(Icons.lightbulb_outline, "Listrik"),
                  _buildIconWithLabel(Icons.mobile_friendly, "Internet"),
                  _buildIconWithLabel(Icons.credit_card, "E-Money"),
                  _buildIconWithLabel(Icons.mosque, "Masjid"),
                  _buildIconWithLabel(Icons.volunteer_activism, "Infaq"),
                  _buildIconWithLabel(Icons.favorite_border, "Donation"),
                  _buildIconWithLabel(Icons.more_horiz, "More"),
                ],
              ),
            ),
          ),
          SizedBox(height: 16),
          CarouselWidget(),
          SizedBox(height: 16),
          InfoSectionWidget(),
        ],
      ),
      bottomNavigationBar: Footer(
        currentIndex: _currentIndex,
        onItemTapped: (index) {
          setState(() {
            _currentIndex = index; // Update the current index
          });
          // Navigate to different pages based on the index
          switch (index) {
            case 0:
              // Navigate to Home
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
              break;
            case 1:
              // Navigate to History Page
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => HistoryPage()));
              break;
            case 2:
              // Navigate to Payment Page (when implemented)
              // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => PaymentPage()));
              break;
            case 3:
              // Navigate to Message Page (when implemented)
              // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MessagePage()));
              break;
            case 4:
              // Navigate to Profile Page
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => ProfilePage()));
              break;
          }
        },
      ),
    );
  }
}

Widget _buildIconWithLabel(IconData icon, String label) {
  return Column(
    children: [
      Container(
        padding: EdgeInsets.all(8), // Add padding around the icon
        decoration: BoxDecoration(
          color: Colors.white, // White background
          borderRadius: BorderRadius.circular(12), // Rounded corners
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child:
            Icon(icon, color: Colors.redAccent, size: 32), // Adjust icon size
      ),
      SizedBox(height: 8), // Space between icon and label
      Text(
        label,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 12),
      ),
    ],
  );
}
