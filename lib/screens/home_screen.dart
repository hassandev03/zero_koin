import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.teal.shade400,
              Colors.yellow.shade600,
              Colors.orange.shade400,
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // User Profile Card
              Container(
                margin: EdgeInsets.all(16),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.black.withValues(alpha: 0.3),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Colors.white.withValues(alpha: 0.2),
                    width: 1,
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Center(
                        child: Text(
                          'W',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Anas Qureshi',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'tanya.hill@example.com',
                            style: TextStyle(
                              color: Colors.white.withValues(alpha: 0.7),
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),

              // Menu Items
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Stack(
                    children: [
                      // Background circular ring image for selected item
                      if (selectedIndex == 2) // ZeroKoin Buy position
                        Positioned(
                          right: -50,
                          top: 120, // Approximate position for ZeroKoin Buy
                          child: Container(
                            width: 200,
                            height: 200,
                            child: Image.asset(
                              'assets/images/circular_ring.png', // Path to your circular ring image
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),

                      ListView(
                        padding: EdgeInsets.zero,
                        children: [
                          _buildMenuItem(
                            icon: Icons.person_add_outlined,
                            title: 'Follow ZeroKoin',
                            index: 0,
                          ),
                          _buildMenuItem(
                            icon: Icons.book_outlined,
                            title: 'Guide',
                            index: 1,
                          ),
                          _buildMenuItem(
                            icon: Icons.shopping_bag_outlined,
                            title: 'ZeroKoin Buy',
                            index: 2,
                            isSelected: true,
                          ),
                          _buildMenuItem(
                            icon: Icons.swap_horiz,
                            title: 'Transactions',
                            index: 3,
                          ),
                          _buildMenuItem(
                            icon: Icons.language,
                            title: 'ZeroKoin Website',
                            index: 4,
                          ),
                          _buildMenuItem(
                            icon: Icons.play_arrow,
                            title: 'Play store',
                            index: 5,
                          ),
                          _buildMenuItem(
                            icon: Icons.link,
                            title: 'Blockchain',
                            index: 6,
                          ),
                          _buildMenuItem(
                            icon: Icons.description_outlined,
                            title: 'Whitepaper',
                            index: 7,
                          ),
                          _buildMenuItem(
                            icon: Icons.help_outline,
                            title: 'Help AI ( Telegram )',
                            index: 8,
                          ),
                          _buildMenuItem(
                            icon: Icons.help_center_outlined,
                            title: 'Help & Support',
                            index: 9,
                          ),
                          _buildMenuItem(
                            icon: Icons.settings_outlined,
                            title: 'Setting',
                            index: 10,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem({
    required IconData icon,
    required String title,
    required int index,
    bool isSelected = false,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? Colors.transparent : Colors.white,
        gradient: isSelected
            ? LinearGradient(
                colors: [Colors.teal.shade300, Colors.orange.shade300],
              )
            : null,
        border: Border(
          bottom: BorderSide(color: Colors.grey.shade200, width: 1),
        ),
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: isSelected ? Colors.white : Colors.grey.shade600,
          size: 24,
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
        trailing: Icon(
          Icons.chevron_right,
          color: isSelected ? Colors.white : Colors.grey.shade400,
          size: 24,
        ),
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
