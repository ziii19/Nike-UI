import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike/homenavigation/mainhome.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const OnBoard1(),
            ),
          );
        },
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/ic_Vector.png',
                width: 157,
                height: 54,
              ),
              Text(
                'Nike',
                style: GoogleFonts.raleway(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 65,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OnBoard1 extends StatelessWidget {
  const OnBoard1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 180),
              child: Image.asset('assets/images/img_onboard1.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'WELCOME TO \nNIKE',
                    style: GoogleFonts.raleway(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      color: const Color(0XFFECECEC),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Image.asset('assets/images/img_sepatu.png'),
                  Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.blue,
                              minimumSize: const Size(335, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const OnBoard2(),
                                ),
                              );
                            },
                            child: Text(
                              'Get Started',
                              style: GoogleFonts.raleway(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF2B2B2B),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
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

class OnBoard extends StatelessWidget {
  const OnBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100, right: 30),
              child: Image.asset('assets/images/BG.png'),
            ),
            Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                Image.asset('assets/images/img_sepatu1.png'),
                Column(
                  children: [
                    const SizedBox(
                      height: 70,
                    ),
                    Text(
                      'Let\' Start Journey \n With Nike',
                      style: GoogleFonts.raleway(
                        color: Colors.white,
                        fontSize: 34,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Smart, Gorgeous & Fashionable \n Collection Explore Now',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 140,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Expanded(
                    flex: 3,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.blue,
                        minimumSize: const Size(335, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const OnBoard3(),
                          ),
                        );
                      },
                      child: Text(
                        'Next',
                        style: GoogleFonts.raleway(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class OnBoard2 extends StatelessWidget {
  const OnBoard2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Image.asset('assets/images/BG.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 130),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset('assets/images/img_sepatu1.png'),
                  const SizedBox(height: 50),
                  Column(
                    children: [
                      Text(
                        'Let\' Start Journey \n With Nike',
                        style: GoogleFonts.raleway(
                          fontSize: 34,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFFECECEC),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Smart, Gorgeous & Fashionable \n Collection Explore Now',
                        style: GoogleFonts.poppins(
                            color: const Color(0xFFD8D8D8),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  const SizedBox(height: 120),
                  Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.blue,
                              minimumSize: const Size(335, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const OnBoard3(),
                                ),
                              );
                            },
                            child: Text(
                              'Next',
                              style: GoogleFonts.raleway(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                    ],
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


class OnBoard3 extends StatelessWidget {
  const OnBoard3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Image.asset('assets/images/onboard3.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/images/img_sepatu3.png'),
                  Column(
                    children: [
                      Text(
                        'You Have The \n Power To',
                        style: GoogleFonts.raleway(
                          fontSize: 34,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFFECECEC),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'There Are Many  Beautiful And Atractive \nPlants To Your Room',
                        style: GoogleFonts.poppins(
                            color: const Color(0xFFD8D8D8),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  const SizedBox(height: 100),
                  Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.blue,
                              minimumSize: const Size(335, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const MainHome(),
                                ),
                              );
                            },
                            child: Text(
                              'Next',
                              style: GoogleFonts.raleway(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                    ],
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
