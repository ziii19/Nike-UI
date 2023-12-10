import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike/home/login.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    // Use a Future.delayed to wait for 3 seconds
    Future.delayed(const Duration(seconds: 3), () {
      // After 3 seconds, navigate to OnBoard1
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const OnBoard1(),
        ),
      );
    });

    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
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
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 65,
                fontStyle: FontStyle.normal,
              ),
            ),
            // Loading indicator or any other widget while waiting
            CircularProgressIndicator(),
          ],
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
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 180),
            child: Image.asset('assets/images/img_onboard1.png'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Image.asset('assets/images/img_sepatu.png'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 120, bottom: 20),
            child: Column(
              children: [
                Center(
                  child: Text(
                    'WELCOME TO \nNIKE',
                    style: GoogleFonts.raleway(
                      fontSize: 34,
                      fontWeight: FontWeight.w900,
                      color: const Color(0XFFECECEC),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
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
      ),
    );
  }
}

class OnBoard2 extends StatelessWidget {
  const OnBoard2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Image.asset('assets/images/BG.png'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 130, bottom: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Image.asset(
                    'assets/images/img_sepatu1.png',
                    width: 400,
                  ),
                ),
                const SizedBox(height: 50),
                Column(
                  children: [
                    Text(
                      'Let\' Start Journey \n With Nike',
                      style: GoogleFonts.raleway(
                        fontSize: 38,
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
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                const SizedBox(height: 120),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Row(
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
      ),
    );
  }
}

class OnBoard3 extends StatelessWidget {
  const OnBoard3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Image.asset('assets/images/onboard3.png'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset('assets/images/img_sepatu3.png'),
                Column(
                  children: [
                    Text(
                      'You Have The \n Power To',
                      style: GoogleFonts.raleway(
                        fontSize: 38,
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
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                const SizedBox(height: 80),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Row(
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
                        builder: (context) => const LoginScreen(),
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
      ),
    );
  }
}
