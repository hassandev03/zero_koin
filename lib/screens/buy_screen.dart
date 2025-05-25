import 'package:flutter/material.dart';
import 'package:zero_koin/models/trading_card.dart';
import 'package:zero_koin/widgets/trading_card_widget.dart';

class BuyScreen extends StatefulWidget {
  const BuyScreen({super.key});

  @override
  State<BuyScreen> createState() => _BuyScreenState();
}

class _BuyScreenState extends State<BuyScreen> {
  // List of trading cards data
  final List<TradingCard> tradingCards = [
    TradingCard(
      platformName: 'PancakeSwap',
      platformIcon: '🥞',
      tradingPair: 'ZEROKOIN/USDT',
      listingDate: '22.09.2024',
      iconColor: const Color(0xFF1FC7D4),
    ),
    TradingCard(
      platformName: 'DEXTOOLS.io',
      platformIcon: '⚡',
      tradingPair: 'ZEROKOIN/USDT',
      listingDate: '22.09.2024',
      iconColor: const Color(0xFF05A3C9),
    ),
    TradingCard(
      platformName: 'SunSwap',
      platformIcon: '☀️',
      tradingPair: 'ZEROKOIN/TRX',
      listingDate: '22.09.2024',
      isLaunchingSoon: true,
      iconColor: const Color(0xFFFF6B35),
    ),
    TradingCard(
      platformName: 'Koin BX',
      platformIcon: '▶️',
      tradingPair: 'ZEROKOIN/TRX',
      listingDate: '22.09.2024',
      isLaunchingSoon: true,
      iconColor: const Color(0xFF1FC7D4),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                Color(0xFF1E9085),
                Color.fromARGB(255, 51, 51, 50),
                Color.fromARGB(255, 46, 46, 45),
                Color(0xFFD3B427),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            child: Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 28,
                      ),
                    ),
                    const SizedBox(width: 12),
                    const Text(
                      "ZeroKoin Buy",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.only(top: 16),
                    itemCount: tradingCards.length,
                    itemBuilder: (context, index) {
                      return TradingCardWidget(card: tradingCards[index]);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
