import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gradient_borders/gradient_borders.dart';

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
                    const SizedBox(height: 20),
                    Image.asset('assets/images/globe.png'),
                    SizedBox(
                      width: 300,
                      child: Row(
                        
                        children: [
                          SvgPicture.asset(
                            'assets/images/global.svg',
                           color: const Color(0xFF7B27E3),
                          ),
                          const SizedBox(width: 20),
                          const Expanded(
                            child: Text(
                              'Optimal Location',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 16,
                                  fontFamily: 'Poppins'),
                            ),
                          ),
                          const Icon(Icons.arrow_forward_outlined,color: const Color(0xFF7B27E3),)
                        ],
                      ),
                    ),
                      const SizedBox(height: 30),
                    SizedBox(
                      width: 300,
                      child: Row(
                        
                        children: [
                          SvgPicture.asset(
                            'assets/images/global.svg',
                           color: const Color(0xFF7B27E3),
                          ),
                          const SizedBox(width: 20),
                          const Expanded(
                            child: Text(
                              'Select Location',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 16,
                                  fontFamily: 'Poppins'),
                            ),
                          ),
                          const Icon(Icons.arrow_forward_outlined,color: const Color(0xFF7B27E3),)
                        ],
                      ),
                    ),
                    const SizedBox(height: 80),
                    _buildChangeServerBtn()
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _buildChangeServerBtn() {
    return Container(
      width: double.maxFinite,
      height: 56,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: const Color(0xFF7B27E3),
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
    );
  }

}
