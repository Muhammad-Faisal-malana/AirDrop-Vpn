import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:signal_strength_indicator/signal_strength_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            child: Image.asset("assets/images/bg.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 50),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.menu),
                    const Text(
                      'Airdrop vpn',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF00081E),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SvgPicture.asset(
                      'assets/images/Day-Night Toggle.svg',
                    ),
                  ],
                ),
                Image.asset('assets/images/globe.png'),
                const SizedBox(height: 20),
                _buildSelectedCountryCard(),
                const SizedBox(height: 70),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Top to Start',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF8C01C0),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(width: 15),
                    SvgPicture.asset('assets/images/arrow.svg')
                  ],
                )
              ],
            ),
          ),
          Stack(
            children: [
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Image.asset(
                  'assets/images/bottom_curved.png',
                  fit: BoxFit.fitWidth,
                  width: double.infinity,
                  height: 430,
                ),
              ),
              _buildChangeServerBtn(),
            ],
          )
        ],
      ),
    );
  }

  Positioned _buildChangeServerBtn() {
    return Positioned(
      left: 20,
      right: 20,
      bottom: 90,
      child: Container(
        width: double.maxFinite,
        height: 56,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: ShapeDecoration(
          gradient: const LinearGradient(
            begin: Alignment(0.9, -0.44),
            end: Alignment(-0.9, 0.44),
            colors: [Color(0xFF8C01C0), Color(0xFFB292C2)],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: const Text(
          'Connected',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  SizedBox _buildSelectedCountryCard() {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Container(
            width: 238,
            height: 60,
            padding: const EdgeInsets.all(12),
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x19FFFFFF),
                  blurRadius: 1,
                  offset: Offset(0, 1),
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Row(
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Netherlands',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF00081E),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      'Amsterdam',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0x6600081E),
                        fontSize: 10,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                const Spacer(),
                SignalStrengthIndicator.bars(
                  value: 0.6,
                  size: 20,
                  barCount: 4,
                  radius: const Radius.circular(2),
                  activeColor: const Color(0xff852BFF),
                  spacing: 0.3,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
