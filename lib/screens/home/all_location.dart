import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vpn/screens/home/home_screen_connected.dart';

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/images/map-bg.png"),
                fit: BoxFit.fitWidth,
              )),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
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
                    Expanded(
                      child: ListView.builder(
                        padding: EdgeInsets.zero,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: const EdgeInsets.all(10),
                            padding: const EdgeInsets.only(bottom: 10,top: 1),
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(color: Colors.black26))),
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
                                    color: Color(0xFF313338),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const Spacer(),
                                SvgPicture.asset('assets/images/signal.svg'),
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
            ),
          ),
        ],
      ),
    );
  }
}
