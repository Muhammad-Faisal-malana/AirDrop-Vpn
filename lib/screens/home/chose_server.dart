import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'all_location.dart';
import 'home_screen.dart';
import 'home_screen_connected.dart';

class ChooseServer extends StatefulWidget {
  const ChooseServer({super.key});

  @override
  State<ChooseServer> createState() => _ChooseServerState();
}

class _ChooseServerState extends State<ChooseServer> {
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
            padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
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
                const SizedBox(height: 20),
                Image.asset('assets/images/globe.png'),
                _buildChoseList(onTap: () {
                  Get.to(const HomeScreen());
                }),
                const SizedBox(height: 30),
                _buildChoseList(
                    onTap: () {
                      Get.to(const AllLocations());
                    },
                    title: 'Select Location'),
                const SizedBox(height: 80),
                _buildChangeServerBtn()
              ],
            ),
          ),
        ],
      ),
    );
  }

  _buildChoseList({String? title, VoidCallback? onTap}) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: 250,
        child: Row(
          children: [
            SvgPicture.asset(
              'assets/images/global.svg',
              color: const Color(0xFF8C01C0),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Text(
                title ?? 'Optimal Location',
                textAlign: TextAlign.left,
                style: const TextStyle(
                  color: Colors.black87,
                  fontSize: 16,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            const Icon(
              Icons.arrow_forward_outlined,
              color: Color(0xFF8C01C0),
            )
          ],
        ),
      ),
    );
  }

  InkWell _buildChangeServerBtn() {
    return InkWell(
      onTap: () {
        Get.to(const HomeScreenConnected());
      },
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
}
