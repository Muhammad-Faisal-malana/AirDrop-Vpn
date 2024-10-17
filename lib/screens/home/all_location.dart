import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:signal_strength_indicator/signal_strength_indicator.dart';

class AllLocations extends StatefulWidget {
  const AllLocations({super.key});

  @override
  State<AllLocations> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<AllLocations> {
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
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 45),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back_outlined),
                    Text(
                      'All Locations',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF00081E),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox()
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  width: 368,
                  height: 45,
                  decoration: ShapeDecoration(
                    color: const Color(0x33C2CDDC),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: TextStyle(
                        color: Color(0x991C1E2F),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                      prefixIcon: Icon(Icons.search, color: Color(0x991C1E2F)),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(top: 10),
                        padding: const EdgeInsets.only(bottom: 10, top: 1),
                        decoration: const BoxDecoration(
                            border: Border(
                          bottom: BorderSide(
                            color: Color(0x4CC2CDDC),
                          ),
                        )),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/usa.png',
                              width: 30,
                              height: 30,
                            ),
                            const SizedBox(width: 15),
                            const Text(
                              'United States',
                              style: TextStyle(
                                color: Color(0x991C1E2F),
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
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
                            const SizedBox(width: 15),
                            SvgPicture.asset('assets/images/circle.svg'),
                          ],
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
