import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:nike/nike-produk/produk.dart';

class MainHomePage extends StatelessWidget {
  const MainHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade50,
        leading: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                size: 30,
              )),
        ),
        title: Center(
          child: Image.asset(
            'assets/images/titleappbar.png',
            width: 120,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: CircleAvatar(
              minRadius: 25,
              backgroundColor: Colors.white,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_bag_outlined,
                  size: 30,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none),
                        prefixIcon: const Icon(Icons.search),
                        hintText: 'Looking for shoes',
                        hintStyle: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: CircleAvatar(
                    minRadius: 30,
                    backgroundColor: Colors.blue,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.tune,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, right: 230),
              child: Text(
                'Select Category',
                style: GoogleFonts.raleway(
                    fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16, left: 25),
              child: SizedBox(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        minimumSize: const Size(120, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'All Shoes',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        minimumSize: const Size(120, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Outdoor',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        minimumSize: const Size(120, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Tennis',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        minimumSize: const Size(120, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Futsal',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        minimumSize: const Size(120, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Safety',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Shoes',
                    style: GoogleFonts.raleway(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF2B2B2B)),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'See all',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF0D6EFD),
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ],
              ),
            ),
            const ProdukNike(),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     Container(
            //       width: 180,
            //       height: 270,
            //       decoration: BoxDecoration(
            //           color: Colors.white,
            //           borderRadius: BorderRadius.circular(16)),
            //       child: Column(
            //         children: [
            //           const Padding(
            //             padding: EdgeInsets.only(right: 135),
            //             child: FavoriteButton(),
            //           ),
            //           Container(
            //               height: 85,
            //               child: Image.asset('assets/images/img-shoes1.png')),
            //           Padding(
            //             padding: const EdgeInsets.only(right: 60, top: 15),
            //             child: Text(
            //               'BEST SELLER',
            //               style: GoogleFonts.poppins(
            //                 fontSize: 16,
            //                 fontWeight: FontWeight.w500,
            //                 fontStyle: FontStyle.normal,
            //                 color: const Color(0xFF0D6EFD),
            //               ),
            //             ),
            //           ),
            //           Padding(
            //             padding: const EdgeInsets.only(top: 5, right: 45),
            //             child: Text(
            //               'Nike Air Max',
            //               style: GoogleFonts.raleway(
            //                   fontSize: 20,
            //                   fontWeight: FontWeight.w600,
            //                   color: const Color(0xFF6A6A6A)),
            //             ),
            //           ),
            //           Row(
            //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             children: [
            //               Padding(
            //                 padding: const EdgeInsets.only(left: 15, top: 10),
            //                 child: Text(
            //                   '\$752.00',
            //                   style: GoogleFonts.poppins(
            //                     fontSize: 17,
            //                     fontWeight: FontWeight.w500,
            //                     color: const Color(0xFF2B2B2B),
            //                   ),
            //                 ),
            //               ),
            //               Padding(
            //                 padding: const EdgeInsets.only(top: 17, right: 5),
            //                 child: CircleAvatar(
            //                     child: IconButton(
            //                         onPressed: () {
            //                           Navigator.push(
            //                             context,
            //                             MaterialPageRoute(
            //                               builder: (context) => DetailProduk(),
            //                             ),
            //                           );
            //                         },
            //                         icon: const Icon(
            //                           Icons.add,
            //                           size: 25,
            //                         ))),
            //               )
            //             ],
            //           ),
            //         ],
            //       ),
            //     ),
            //     Container(
            //       width: 180,
            //       height: 270,
            //       decoration: BoxDecoration(
            //           color: Colors.white,
            //           borderRadius: BorderRadius.circular(16)),
            //       child: Column(
            //         children: [
            //           const Padding(
            //             padding: EdgeInsets.only(right: 135),
            //             child: FavoriteButton(),
            //           ),
            //           Container(
            //               height: 85,
            //               child: Image.asset('assets/images/img-shoes.png')),
            //           Padding(
            //             padding: const EdgeInsets.only(right: 60, top: 15),
            //             child: Text(
            //               'BEST SELLER',
            //               style: GoogleFonts.poppins(
            //                 fontSize: 16,
            //                 fontWeight: FontWeight.w500,
            //                 fontStyle: FontStyle.normal,
            //                 color: const Color(0xFF0D6EFD),
            //               ),
            //             ),
            //           ),
            //           Padding(
            //             padding: const EdgeInsets.only(top: 5, right: 45),
            //             child: Text(
            //               'Nike Jordan',
            //               style: GoogleFonts.raleway(
            //                   fontSize: 20,
            //                   fontWeight: FontWeight.w600,
            //                   color: const Color(0xFF6A6A6A)),
            //             ),
            //           ),
            //           Row(
            //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             children: [
            //               Padding(
            //                 padding: const EdgeInsets.only(left: 15, top: 10),
            //                 child: Text(
            //                   '\$302.00',
            //                   style: GoogleFonts.poppins(
            //                     fontSize: 17,
            //                     fontWeight: FontWeight.w500,
            //                     color: const Color(0xFF2B2B2B),
            //                   ),
            //                 ),
            //               ),
            //               Padding(
            //                 padding: const EdgeInsets.only(top: 17, right: 5),
            //                 child: CircleAvatar(
            //                     child: IconButton(
            //                         onPressed: () {
            //                           Navigator.push(
            //                             context,
            //                             MaterialPageRoute(
            //                               builder: (context) => DetailProduk(),
            //                             ),
            //                           );
            //                         },
            //                         icon: const Icon(
            //                           Icons.add,
            //                           size: 25,
            //                         ))),
            //               )
            //             ],
            //           ),
            //         ],
            //       ),
            //     ),
            //   ],
            // ),
            // const SizedBox(height: 15),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     Container(
            //       width: 180,
            //       height: 270,
            //       decoration: BoxDecoration(
            //           color: Colors.white,
            //           borderRadius: BorderRadius.circular(16)),
            //       child: Column(
            //         children: [
            //           const Padding(
            //             padding: EdgeInsets.only(right: 135),
            //             child: FavoriteButton(),
            //           ),
            //           Container(
            //               height: 85,
            //               child: Image.asset('assets/images/img-prod1.png')),
            //           Padding(
            //             padding: const EdgeInsets.only(right: 60, top: 15),
            //             child: Text(
            //               'BEST SELLER',
            //               style: GoogleFonts.poppins(
            //                 fontSize: 16,
            //                 fontWeight: FontWeight.w500,
            //                 fontStyle: FontStyle.normal,
            //                 color: const Color(0xFF0D6EFD),
            //               ),
            //             ),
            //           ),
            //           Padding(
            //             padding: const EdgeInsets.only(top: 5, right: 45),
            //             child: Text(
            //               'Nike Air Max',
            //               style: GoogleFonts.raleway(
            //                   fontSize: 20,
            //                   fontWeight: FontWeight.w600,
            //                   color: const Color(0xFF6A6A6A)),
            //             ),
            //           ),
            //           Row(
            //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             children: [
            //               Padding(
            //                 padding: const EdgeInsets.only(
            //                   left: 15,
            //                 ),
            //                 child: Text(
            //                   '\$452.00',
            //                   style: GoogleFonts.poppins(
            //                     fontSize: 17,
            //                     fontWeight: FontWeight.w500,
            //                     color: const Color(0xFF2B2B2B),
            //                   ),
            //                 ),
            //               ),
            //               Padding(
            //                 padding: const EdgeInsets.only(top: 17, right: 5),
            //                 child: CircleAvatar(
            //                     child: IconButton(
            //                         onPressed: () {
            //                           Navigator.push(
            //                             context,
            //                             MaterialPageRoute(
            //                               builder: (context) => DetailProduk(),
            //                             ),
            //                           );
            //                         },
            //                         icon: const Icon(
            //                           Icons.add,
            //                           size: 25,
            //                         ))),
            //               )
            //             ],
            //           ),
            //         ],
            //       ),
            //     ),
            //     Container(
            //       width: 180,
            //       height: 270,
            //       decoration: BoxDecoration(
            //           color: Colors.white,
            //           borderRadius: BorderRadius.circular(16)),
            //       child: Column(
            //         children: [
            //           const Padding(
            //             padding: EdgeInsets.only(right: 135),
            //             child: FavoriteButton(),
            //           ),
            //           Container(
            //               height: 85,
            //               child: Image.asset('assets/images/img-prod2.png')),
            //           Padding(
            //             padding: const EdgeInsets.only(right: 60, top: 15),
            //             child: Text(
            //               'BEST SELLER',
            //               style: GoogleFonts.poppins(
            //                 fontSize: 16,
            //                 fontWeight: FontWeight.w500,
            //                 fontStyle: FontStyle.normal,
            //                 color: const Color(0xFF0D6EFD),
            //               ),
            //             ),
            //           ),
            //           Padding(
            //             padding: const EdgeInsets.only(top: 5, right: 45),
            //             child: Text(
            //               'Nike Jordan',
            //               style: GoogleFonts.raleway(
            //                   fontSize: 20,
            //                   fontWeight: FontWeight.w600,
            //                   color: const Color(0xFF6A6A6A)),
            //             ),
            //           ),
            //           Row(
            //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             children: [
            //               Padding(
            //                 padding: const EdgeInsets.only(left: 15, top: 10),
            //                 child: Text(
            //                   '\$902.00',
            //                   style: GoogleFonts.poppins(
            //                     fontSize: 17,
            //                     fontWeight: FontWeight.w500,
            //                     color: const Color(0xFF2B2B2B),
            //                   ),
            //                 ),
            //               ),
            //               Padding(
            //                 padding: const EdgeInsets.only(top: 17, right: 5),
            //                 child: CircleAvatar(
            //                   child: IconButton(
            //                     onPressed: () {
            //                       Navigator.push(
            //                         context,
            //                         MaterialPageRoute(
            //                           builder: (context) => DetailProduk(),
            //                         ),
            //                       );
            //                     },
            //                     icon: const Icon(
            //                       Icons.add,
            //                       size: 25,
            //                     ),
            //                   ),
            //                 ),
            //               )
            //             ],
            //           ),
            //         ],
            //       ),
            //     ),
            //   ],
            // ),
            // const SizedBox(height: 15),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     Container(
            //       width: 180,
            //       height: 270,
            //       decoration: BoxDecoration(
            //           color: Colors.white,
            //           borderRadius: BorderRadius.circular(16)),
            //       child: Column(
            //         children: [
            //           const Padding(
            //             padding: EdgeInsets.only(right: 135),
            //             child: FavoriteButton(),
            //           ),
            //           Container(
            //               height: 85,
            //               child: Image.asset('assets/images/img-shoes1.png')),
            //           Padding(
            //             padding: const EdgeInsets.only(right: 60, top: 15),
            //             child: Text(
            //               'BEST SELLER',
            //               style: GoogleFonts.poppins(
            //                 fontSize: 16,
            //                 fontWeight: FontWeight.w500,
            //                 fontStyle: FontStyle.normal,
            //                 color: const Color(0xFF0D6EFD),
            //               ),
            //             ),
            //           ),
            //           Padding(
            //             padding: const EdgeInsets.only(top: 5, right: 45),
            //             child: Text(
            //               'Nike Air Max',
            //               style: GoogleFonts.raleway(
            //                   fontSize: 20,
            //                   fontWeight: FontWeight.w600,
            //                   color: const Color(0xFF6A6A6A)),
            //             ),
            //           ),
            //           Row(
            //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             children: [
            //               Padding(
            //                 padding: const EdgeInsets.only(left: 15, top: 10),
            //                 child: Text(
            //                   '\$752.00',
            //                   style: GoogleFonts.poppins(
            //                     fontSize: 17,
            //                     fontWeight: FontWeight.w500,
            //                     color: const Color(0xFF2B2B2B),
            //                   ),
            //                 ),
            //               ),
            //               Padding(
            //                 padding: const EdgeInsets.only(top: 17, right: 5),
            //                 child: CircleAvatar(
            //                     child: IconButton(
            //                         onPressed: () {
            //                           Navigator.push(
            //                             context,
            //                             MaterialPageRoute(
            //                               builder: (context) => DetailProduk(),
            //                             ),
            //                           );
            //                         },
            //                         icon: const Icon(
            //                           Icons.add,
            //                           size: 25,
            //                         ))),
            //               )
            //             ],
            //           ),
            //         ],
            //       ),
            //     ),
            //     Container(
            //       width: 180,
            //       height: 270,
            //       decoration: BoxDecoration(
            //           color: Colors.white,
            //           borderRadius: BorderRadius.circular(16)),
            //       child: Column(
            //         children: [
            //           const Padding(
            //             padding: EdgeInsets.only(right: 135),
            //             child: FavoriteButton(),
            //           ),
            //           Container(
            //               height: 85,
            //               child: Image.asset('assets/images/img-shoes.png')),
            //           Padding(
            //             padding: const EdgeInsets.only(right: 60, top: 15),
            //             child: Text(
            //               'BEST SELLER',
            //               style: GoogleFonts.poppins(
            //                 fontSize: 16,
            //                 fontWeight: FontWeight.w500,
            //                 fontStyle: FontStyle.normal,
            //                 color: const Color(0xFF0D6EFD),
            //               ),
            //             ),
            //           ),
            //           Padding(
            //             padding: const EdgeInsets.only(top: 5, right: 45),
            //             child: Text(
            //               'Nike Jordan',
            //               style: GoogleFonts.raleway(
            //                   fontSize: 20,
            //                   fontWeight: FontWeight.w600,
            //                   color: const Color(0xFF6A6A6A)),
            //             ),
            //           ),
            //           Row(
            //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             children: [
            //               Padding(
            //                 padding: const EdgeInsets.only(left: 15, top: 10),
            //                 child: Text(
            //                   '\$302.00',
            //                   style: GoogleFonts.poppins(
            //                     fontSize: 17,
            //                     fontWeight: FontWeight.w500,
            //                     color: const Color(0xFF2B2B2B),
            //                   ),
            //                 ),
            //               ),
            //               Padding(
            //                 padding: const EdgeInsets.only(top: 17, right: 5),
            //                 child: CircleAvatar(
            //                     child: IconButton(
            //                         onPressed: () {
            //                           Navigator.push(
            //                             context,
            //                             MaterialPageRoute(
            //                               builder: (context) => DetailProduk(),
            //                             ),
            //                           );
            //                         },
            //                         icon: const Icon(
            //                           Icons.add,
            //                           size: 25,
            //                         ))),
            //               )
            //             ],
            //           ),
            //         ],
            //       ),
            //     ),
            //   ],
            // ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'New Arrivals',
                    style: GoogleFonts.raleway(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF2B2B2B),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'See all',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF0D6EFD),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Stack(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(13),
                            child: Container(
                              width: 370,
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
                        padding: const EdgeInsets.only(left: 30, top: 45),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Summer Sale',
                              style: GoogleFonts.raleway(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                letterSpacing: -0.24,
                                color: const Color(0xFF3B3B3B),
                              ),
                            ),
                            const Text(
                              '15% OFF',
                              style: TextStyle(
                                  fontFamily: 'Futura',
                                  fontSize: 38,
                                  letterSpacing: -0.72,
                                  color: Color(0xFF674DC5)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 190, top: 35),
                        child: Image.asset(
                          'assets/images/text.png',
                          width: 32,
                          height: 32,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 210, bottom: 15),
                        child: Image.asset(
                          'assets/images/ariv-boot.png',
                          width: 130,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Stack(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(13),
                            child: Container(
                              width: 370,
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
                        padding: const EdgeInsets.only(left: 30, top: 45),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Summer Sale',
                              style: GoogleFonts.raleway(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                letterSpacing: -0.24,
                                color: const Color(0xFF3B3B3B),
                              ),
                            ),
                            const Text(
                              '15% OFF',
                              style: TextStyle(
                                  fontFamily: 'Futura',
                                  fontSize: 38,
                                  letterSpacing: -0.72,
                                  color: Color(0xFF674DC5)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 190, top: 35),
                        child: Image.asset(
                          'assets/images/text.png',
                          width: 32,
                          height: 32,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 210, bottom: 15),
                        child: Image.asset(
                          'assets/images/ariv-boot.png',
                          width: 130,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Stack(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(13),
                            child: Container(
                              width: 370,
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
                        padding: const EdgeInsets.only(left: 30, top: 45),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Summer Sale',
                              style: GoogleFonts.raleway(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                letterSpacing: -0.24,
                                color: const Color(0xFF3B3B3B),
                              ),
                            ),
                            const Text(
                              '15% OFF',
                              style: TextStyle(
                                  fontFamily: 'Futura',
                                  fontSize: 38,
                                  letterSpacing: -0.72,
                                  color: Color(0xFF674DC5)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 190, top: 35),
                        child: Image.asset(
                          'assets/images/text.png',
                          width: 32,
                          height: 32,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 210, bottom: 15),
                        child: Image.asset(
                          'assets/images/ariv-boot.png',
                          width: 130,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Stack(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(13),
                            child: Container(
                              width: 370,
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
                        padding: const EdgeInsets.only(left: 30, top: 45),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Summer Sale',
                              style: GoogleFonts.raleway(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                letterSpacing: -0.24,
                                color: const Color(0xFF3B3B3B),
                              ),
                            ),
                            const Text(
                              '15% OFF',
                              style: TextStyle(
                                  fontFamily: 'Futura',
                                  fontSize: 38,
                                  letterSpacing: -0.72,
                                  color: Color(0xFF674DC5)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 190, top: 35),
                        child: Image.asset(
                          'assets/images/text.png',
                          width: 32,
                          height: 32,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 210, bottom: 15),
                        child: Image.asset(
                          'assets/images/ariv-boot.png',
                          width: 130,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Stack(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(13),
                            child: Container(
                              width: 370,
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
                        padding: const EdgeInsets.only(left: 30, top: 45),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Summer Sale',
                              style: GoogleFonts.raleway(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                letterSpacing: -0.24,
                                color: const Color(0xFF3B3B3B),
                              ),
                            ),
                            const Text(
                              '15% OFF',
                              style: TextStyle(
                                  fontFamily: 'Futura',
                                  fontSize: 38,
                                  letterSpacing: -0.72,
                                  color: Color(0xFF674DC5)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 190, top: 35),
                        child: Image.asset(
                          'assets/images/text.png',
                          width: 32,
                          height: 32,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 210, bottom: 15),
                        child: Image.asset(
                          'assets/images/ariv-boot.png',
                          width: 130,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Stack(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(13),
                            child: Container(
                              width: 370,
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
                        padding: const EdgeInsets.only(left: 30, top: 45),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Summer Sale',
                              style: GoogleFonts.raleway(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                letterSpacing: -0.24,
                                color: const Color(0xFF3B3B3B),
                              ),
                            ),
                            const Text(
                              '15% OFF',
                              style: TextStyle(
                                  fontFamily: 'Futura',
                                  fontSize: 38,
                                  letterSpacing: -0.72,
                                  color: Color(0xFF674DC5)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 190, top: 35),
                        child: Image.asset(
                          'assets/images/text.png',
                          width: 32,
                          height: 32,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 210, bottom: 15),
                        child: Image.asset(
                          'assets/images/ariv-boot.png',
                          width: 130,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        items: const <Widget>[
          Icon(Icons.home_rounded, size: 30),
          Icon(Icons.shopping_bag_rounded, size: 30),
          Icon(Icons.person_2_rounded, size: 30),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
    );
  }
}
