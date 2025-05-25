import 'package:flutter/material.dart';
import 'package:zero_koin/screens/blockchain_screen.dart';
import 'package:zero_koin/screens/buy_screen.dart';
import 'package:zero_koin/screens/guide_screen.dart';
import 'package:zero_koin/screens/help_ai_screen.dart';
import 'package:zero_koin/screens/help_support_screen.dart';
import 'package:zero_koin/screens/play_store_screen.dart';
import 'package:zero_koin/screens/settings_screen.dart';
import 'package:zero_koin/screens/transactions_screen.dart';
import 'package:zero_koin/screens/white_paper_screen.dart';
import 'package:zero_koin/screens/zero_web_screen.dart';
import 'package:zero_koin/widgets/menu_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: null,
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * 0.2,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [
                          const Color.fromARGB(255, 30, 144, 133),
                          const Color.fromARGB(255, 103, 101, 91),
                          const Color.fromARGB(255, 211, 180, 39),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      height: screenHeight * 0.17,
                      child: Container(
                        margin: EdgeInsets.all(16),
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.black.withValues(alpha: 0.8),
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: Colors.white.withValues(alpha: 0.2),
                            width: 1,
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 0, 161, 220),
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
                                mainAxisAlignment: MainAxisAlignment.center,
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
                                      color: Colors.white.withValues(
                                        alpha: 0.7,
                                      ),
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 0, 161, 220),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: GestureDetector(
                                onTap: () {},
                                child: Icon(
                                  Icons.exit_to_app_outlined,
                                  color: Colors.white,
                                  size: 24,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.white),
                      child: Stack(
                        children: [
                          ListView(
                            padding: EdgeInsets.zero,
                            children: [
                              MenuItem(
                                icon: Icons.person_add_outlined,
                                title: 'Follow ZeroKoin',
                                onTap: () {},
                                isSelected: false,
                              ),
                              MenuItem(
                                icon: Icons.book_outlined,
                                title: 'Guide',
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (_) => const GuideScreen(),
                                    ),
                                  );
                                },
                                isSelected: false,
                              ),
                              MenuItem(
                                icon: Icons.shopping_bag_outlined,
                                title: 'ZeroKoin Buy',
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (_) => const BuyScreen(),
                                    ),
                                  );
                                },
                                isSelected: false,
                              ),
                              MenuItem(
                                icon: Icons.swap_horiz,
                                title: 'Transactions',
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (_) => const TransactionsScreen(),
                                    ),
                                  );
                                },
                                isSelected: false,
                              ),
                              MenuItem(
                                icon: Icons.language,
                                title: 'ZeroKoin Website',
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (_) => const ZeroWebScreen(),
                                    ),
                                  );
                                },
                                isSelected: false,
                              ),
                              MenuItem(
                                icon: Icons.play_arrow,
                                title: 'Play store',
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (_) => const PlayStoreScreen(),
                                    ),
                                  );
                                },
                                isSelected: false,
                              ),
                              MenuItem(
                                icon: Icons.link,
                                title: 'Blockchain',
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (_) => const BlockchainScreen(),
                                    ),
                                  );
                                },
                                isSelected: false,
                              ),
                              MenuItem(
                                icon: Icons.description_outlined,
                                title: 'Whitepaper',
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (_) => const WhitePaperScreen(),
                                    ),
                                  );
                                },
                                isSelected: false,
                              ),
                              MenuItem(
                                icon: Icons.help_outline,
                                title: 'Help AI ( Telegram )',
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (_) => const HelpAiScreen(),
                                    ),
                                  );
                                },
                                isSelected: false,
                              ),
                              MenuItem(
                                icon: Icons.help_center_outlined,
                                title: 'Help & Support',
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (_) => const HelpSupportScreen(),
                                    ),
                                  );
                                },
                                isSelected: false,
                              ),
                              MenuItem(
                                icon: Icons.settings_outlined,
                                title: 'Setting',
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (_) => const SettingsScreen(),
                                    ),
                                  );
                                },
                                isSelected: false,
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
          ],
        ),
      ),
    );
  }
}
