import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gradient_borders/gradient_borders.dart';

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.6,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/images/map-bg.png"),
                fit: BoxFit.fitWidth,
              )),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 70),
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
                    SizedBox(height: MediaQuery.of(context).size.height * 0.05),
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
                        _buildDownloadUploadwidget(),
                        const SizedBox(width: 10),
                        _buildDownloadUploadwidget(
                            name: 'Upload :',
                            image: 'assets/images/upload.svg',
                            speed: '500 Mb'),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Image.asset(
                    'assets/images/bottom_curved.png',
                    fit: BoxFit.fitWidth,
                    width: double.infinity,
                    height: 220,
                  ),
                ),
                Positioned(
                    bottom: 150,
                    left: 0,
                    right: 0,
                    child: Image.asset('assets/images/globe.png')),
                Positioned(
                  left: 20,
                  right: 20,
                  bottom: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildCountryWidget(),
                      _buildCountryWidget(
                          image: 'assets/images/right-arrow 1.svg',
                          name: '37.120.202.186',
                          speed: 'IP address'),
                    ],
                  ),
                ),
                _buildChangeServerBtn(),
              ],
            ),
          )
        ],
      ),
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
            begin: Alignment(1.00, 0.00),
            end: Alignment(-1, 0),
            colors: [Color(0xFFE59C97), Color(0xFF7B27E3)],
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

  Container _buildSelectedCountryCard() {
    return Container(
      width: 258,
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
      child: const Row(
        children: [
          Column(
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
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Strength',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0x6600081E),
                  fontSize: 10,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                '14%',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF00081E),
                  fontSize: 11,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Container _buildDownloadUploadwidget({String? name, image, speed}) {
    return Container(
      width: 124,
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
          SvgPicture.asset(image ?? 'assets/images/download.svg'),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name ?? 'Download :',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Color(0x6600081E),
                  fontSize: 10,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                speed ?? '499 MB',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Color(0xFF00081E),
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Row _buildCountryWidget({String? name, image, speed}) {
    return Row(
      children: [
        SvgPicture.asset(image ?? 'assets/images/right-arrow 2.svg'),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name ?? 'US - Miami',
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              speed ?? 'Server',
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0xFF778AA5),
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
      ],
    );
  }

  Container _buildGradientBorderWidget() {
    return Container(
      width: 220,
      height: 220,
      decoration: const BoxDecoration(
          border: GradientBoxBorder(
            gradient: LinearGradient(
              begin: Alignment(1.00, -0.06),
              end: Alignment(-1, 0.06),
              colors: [Color(0xFFFF6464), Color(0xFF3524FF)],
            ),
            width: 18,
          ),
          shape: BoxShape.circle),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset('assets/images/switch.svg'),
          const Text(
            'Your IP',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF778AA5),
              fontSize: 16,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
          ),
          const Text(
            '112.456.7569',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
