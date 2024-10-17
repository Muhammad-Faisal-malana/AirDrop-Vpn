import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:signal_strength_indicator/signal_strength_indicator.dart';

class HomeScreenConnected extends StatefulWidget {
  const HomeScreenConnected({super.key});

  @override
  State<HomeScreenConnected> createState() => _HomeScreenConnectedState();
}

class _HomeScreenConnectedState extends State<HomeScreenConnected> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      body: Stack(
        children: [
          Container(
            height: 200,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/main-bg.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
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
                const Text(
                  'Connection is secured',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromARGB(255, 13, 203, 120),
                    fontSize: 24,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Text(
                  'connecting time',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF00081E),
                    fontSize: 12,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Text(
                  '02 : 10 : 00',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF00081E),
                    fontSize: 24,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 20),
                _buildSelectedCountryCard(),
                const SizedBox(height: 20),
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
              Positioned(
                left: 20,
                right: 20,
                bottom: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildDownloadUploadWidget(),
                          const SizedBox(width: 10),
                          _buildDownloadUploadWidget(
                            name: 'Local IP',
                            child: _buildLocationImage(),
                            speed: '404 404 404',
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildDownloadUploadWidget(
                              name: 'Upload :',
                              image: 'assets/images/upload.svg',
                              speed: '500 Mb'),
                          const SizedBox(width: 10),
                          _buildDownloadUploadWidget(
                            name: 'VPN IP',
                            child: _buildLocationImage(),
                            speed: '404 404 404',
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              _buildChangeServerBtn(),
            ],
          )
        ],
      ),
    );
  }

  Container _buildLocationImage() {
    return Container(
      height: 29,
      width: 29,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: const Color(0x99D9ACE9),
          borderRadius: BorderRadius.circular(8)),
      child: SvgPicture.asset('assets/images/location.svg'),
    );
  }

  Positioned _buildChangeServerBtn() {
    return Positioned(
      left: 20,
      right: 20,
      bottom: 30,
      child: Container(
        width: double.maxFinite,
        height: 56,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          gradient: const LinearGradient(
            begin: Alignment(0.9, -0.44),
            end: Alignment(-0.9, 0.44),
            colors: [
              Color(0xFF8C01C0),
              Color(0xFFB292C2),
            ],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset('assets/images/global.svg'),
            const Text(
              'change server',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
            SvgPicture.asset('assets/images/arrow-right.svg')
          ],
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

  Container _buildDownloadUploadWidget(
      {String? name, image, speed, Widget? child}) {
    return Container(
      height: 70,
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
          child ?? SvgPicture.asset(image ?? 'assets/images/download.svg'),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  speed ?? '499 MB',
                  maxLines: 1,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  name ?? 'Download :',
                  maxLines: 1,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color(0xFF778AA5),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Container _buildGradientBorderWidget() {
  //   return Container(
  //     width: 220,
  //     height: 220,
  //     decoration: const BoxDecoration(
  //         border: GradientBoxBorder(
  //           gradient: LinearGradient(
  //             begin: Alignment(1.00, -0.06),
  //             end: Alignment(-1, 0.06),
  //             colors: [Color(0xFFFF6464), Color(0xFF3524FF)],
  //           ),
  //           width: 18,
  //         ),
  //         shape: BoxShape.circle),
  //     child: Column(
  //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //       children: [
  //         SvgPicture.asset('assets/images/switch.svg'),
  //         const Text(
  //           'Your IP',
  //           textAlign: TextAlign.center,
  //           style: TextStyle(
  //             color: Color(0xFF778AA5),
  //             fontSize: 16,
  //             fontFamily: 'Poppins',
  //             fontWeight: FontWeight.w400,
  //           ),
  //         ),
  //         const Text(
  //           '112.456.7569',
  //           textAlign: TextAlign.center,
  //           style: TextStyle(
  //             color: Colors.black,
  //             fontSize: 14,
  //             fontFamily: 'Poppins',
  //             fontWeight: FontWeight.w600,
  //           ),
  //         ),
  //         const SizedBox(
  //           height: 10,
  //         )
  //       ],
  //     ),
  //   );
  // }
}
