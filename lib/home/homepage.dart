import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike/detail/homeprodukdetail.dart';
import 'package:nike/homenavigation/mainhome.dart';
import 'package:nike/like/like.dart';
import 'package:nike/nike-produk/produk.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade50,
        title: Center(
          child: Image.asset(
            'assets/images/titleappbar.png',
            width: 120,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Maintence(),
              ),
            );
          },
          icon: const Icon(
            Icons.menu,
            size: 25,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Maintence(),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.shopping_bag_outlined,
                  size: 25,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 3,
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: BorderSide.none),
                        prefixIcon: const Padding(
                          padding: EdgeInsets.only(left: 25, right: 15),
                          child: Icon(Icons.search),
                        ),
                        hintText: 'Looking for shoes',
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 20,
                        ), // Atur ukuran padding di sini
                      ),
                    ),
                  ),
                  Flexible(
                    child: CircleAvatar(
                      backgroundColor: const Color(0xFF0D6EFD),
                      minRadius: 25,
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Maintence(),
                            ),
                          );
                        },
                        icon: const Icon(
                          Icons.tune,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Select Category',
                    style: GoogleFonts.raleway(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF2B2B2B),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          minimumSize: const Size(110, 40),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8))),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Maintence(),
                          ),
                        );
                      },
                      child: Text(
                        'All Shoes',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1,
                          color: const Color(0xFF2B2B2B),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF0D6EFD),
                          foregroundColor: Colors.white,
                          minimumSize: const Size(110, 40),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8))),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Maintence(),
                          ),
                        );
                      },
                      child: Text(
                        'Outdoor',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          minimumSize: const Size(110, 40),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8))),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Maintence(),
                          ),
                        );
                      },
                      child: Text(
                        'Tennis',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1,
                          color: const Color(0xFF2B2B2B),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          minimumSize: const Size(110, 40),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8))),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Maintence(),
                          ),
                        );
                      },
                      child: Text(
                        'Jordan',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1,
                          color: const Color(0xFF2B2B2B),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          minimumSize: const Size(110, 40),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8))),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Maintence(),
                          ),
                        );
                      },
                      child: Text(
                        'Nike Air',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1,
                          color: const Color(0xFF2B2B2B),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Shoes',
                    style: GoogleFonts.raleway(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: const Color(0XFF2B2B2B),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                        minimumSize: const Size(0, 0),
                        padding: const EdgeInsets.all(5)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProdukNike(),
                        ),
                      );
                    },
                    child: Text(
                      'See all',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF0D6EFD),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 250,
                  width: 170,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Stack(
                          children: [
                            const FavoriteButton(),
                            Padding(
                              padding: const EdgeInsets.only(top: 40),
                              child: Image.asset('assets/images/img-prod1.png'),
                            )
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'BEST SELLER',
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0XFF0D6EFD),
                                ),
                              ),
                              Text(
                                'Jordan',
                                style: GoogleFonts.raleway(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xFF6A6A6A),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '\$625.00',
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xFF2B2B2B)),
                                  ),
                                  Container(
                                    height: 35,
                                    width: 35,
                                    decoration: const BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(16),
                                            bottomRight: Radius.circular(16))),
                                    child: IconButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const DetailProdukHome(),
                                          ),
                                        );
                                      },
                                      icon: const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 250,
                  width: 170,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Stack(
                          children: [
                            const FavoriteButton(),
                            Padding(
                              padding: const EdgeInsets.only(top: 40),
                              child: Image.asset('assets/images/img-prod2.png'),
                            )
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'BEST SELLER',
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0XFF0D6EFD),
                                ),
                              ),
                              Text(
                                'Nike Air Max',
                                style: GoogleFonts.raleway(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xFF6A6A6A),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '\$324.00',
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xFF2B2B2B)),
                                  ),
                                  Container(
                                    height: 35,
                                    width: 35,
                                    decoration: const BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(16),
                                            bottomRight: Radius.circular(16))),
                                    child: IconButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const DetailProdukHome(),
                                          ),
                                        );
                                      },
                                      icon: const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'New Arrivals',
                    style: GoogleFonts.raleway(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: const Color(0XFF2B2B2B),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                        minimumSize: const Size(0, 0),
                        padding: const EdgeInsets.all(5)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Maintence(),
                        ),
                      );
                    },
                    child: Text(
                      'See all',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF0D6EFD),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 140,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const SizedBox(width: 10),
                  Stack(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Maintence(),
                            ),
                          );
                        },
                        child: Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(13),
                            child: Container(
                              width: 340,
                              height: 110,
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child:
                                    Image.asset('assets/images/arriv-bg.png'),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Summer Sale',
                              style: GoogleFonts.raleway(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                letterSpacing: -0.24,
                                color: const Color(0xFF3B3B3B),
                              ),
                            ),
                            const Text(
                              '15% OFF',
                              style: TextStyle(
                                  fontFamily: 'Futura',
                                  fontSize: 36,
                                  letterSpacing: -0.72,
                                  color: Color(0xFF674DC5)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 170, top: 25),
                        child: Image.asset(
                          'assets/images/text.png',
                          width: 32,
                          height: 32,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 195, bottom: 35),
                        child: Image.asset(
                          'assets/images/ariv-boot.png',
                          width: 120,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(width: 30),
                  Stack(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Maintence(),
                            ),
                          );
                        },
                        child: Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(13),
                            child: Container(
                              width: 340,
                              height: 110,
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child:
                                    Image.asset('assets/images/arriv-bg.png'),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Summer Sale',
                              style: GoogleFonts.raleway(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                letterSpacing: -0.24,
                                color: const Color(0xFF3B3B3B),
                              ),
                            ),
                            const Text(
                              '15% OFF',
                              style: TextStyle(
                                  fontFamily: 'Futura',
                                  fontSize: 36,
                                  letterSpacing: -0.72,
                                  color: Color(0xFF674DC5)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 170, top: 25),
                        child: Image.asset(
                          'assets/images/text.png',
                          width: 32,
                          height: 32,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 195, bottom: 35),
                        child: Image.asset(
                          'assets/images/ariv-boot.png',
                          width: 120,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(width: 30),
                  Stack(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Maintence(),
                            ),
                          );
                        },
                        child: Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(13),
                            child: Container(
                              width: 340,
                              height: 110,
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child:
                                    Image.asset('assets/images/arriv-bg.png'),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Summer Sale',
                              style: GoogleFonts.raleway(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                letterSpacing: -0.24,
                                color: const Color(0xFF3B3B3B),
                              ),
                            ),
                            const Text(
                              '15% OFF',
                              style: TextStyle(
                                  fontFamily: 'Futura',
                                  fontSize: 36,
                                  letterSpacing: -0.72,
                                  color: Color(0xFF674DC5)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 170, top: 25),
                        child: Image.asset(
                          'assets/images/text.png',
                          width: 32,
                          height: 32,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 195, bottom: 35),
                        child: Image.asset(
                          'assets/images/ariv-boot.png',
                          width: 120,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Maintence extends StatelessWidget {
  const Maintence({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MainHome(),
              ),
            );
          },
          icon: const CircleAvatar(
            child: Icon(Icons.arrow_back),
          ),
        ),
      ),
      body: Center(
        child: Text(
          'Halaman Ini Sedang Dalam Pengembangan',
          style: GoogleFonts.raleway(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.blueGrey),
        ),
      ),
    );
  }
}
