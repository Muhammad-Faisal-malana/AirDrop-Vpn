import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vpn/screens/home/home_screen_connected.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.65,
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
                      SvgPicture.asset(
                        'assets/images/logo.svg',
                        height: 50,
                      ),
                      Image.asset('assets/images/dp.png'),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.21),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const HomeScreenConnected()));
                    },
                    child: SizedBox(
                      width: 180,
                      height: 180,
                      child: Stack(
                        children: [
                          Container(
                            width: 180,
                            height: 180,
                            decoration: const ShapeDecoration(
                              color: Colors.white,
                              shape: OvalBorder(
                                side: BorderSide(
                                  width: 3,
                                  strokeAlign: BorderSide.strokeAlignOutside,
                                  color: Color(0x19A9A9A9),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 25,
                            top: 25,
                            child: Container(
                              width: 130,
                              height: 130,
                              alignment: Alignment.center,
                              decoration: const ShapeDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment(1.00, -0.06),
                                  end: Alignment(-1, 0.06),
                                  colors: [Color(0xFFFF6464), Color(0xFF3524FF)],
                                ),
                                shape: OvalBorder(),
                                shadows: [
                                  BoxShadow(
                                    color: Color(0x7F5E41D6),
                                    blurRadius: 50,
                                    offset: Offset(0, 10),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                              child: SvgPicture.asset('assets/images/power.svg'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          const Spacer(),
          Container(
            width: double.infinity,
            height: 70,
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(35),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x149B9B9B),
                  blurRadius: 75,
                  offset: Offset(10, 0),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'United States',
                  style: TextStyle(
                    color: Color(0xFF313338),
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SvgPicture.asset('assets/images/arrow-left.svg'),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 106,
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x149B9B9B),
                  blurRadius: 75,
                  offset: Offset(10, 0),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset('assets/images/upgrade.svg'),
                const SizedBox(
                  width: 20,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Upgrade to PRO',
                      style: TextStyle(
                        color: Color(0xFF313338),
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Acess to every country,\ncancel anytime',
                      style: TextStyle(
                        color: Color(0xCC323438),
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                const Spacer(),
                Container(
                    alignment: Alignment.center,
                    width: 52,
                    height: 76,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFFF6565),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9)),
                    ),
                    child: SvgPicture.asset(
                      'assets/images/arrow-left.svg',
                      color: Colors.white,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
