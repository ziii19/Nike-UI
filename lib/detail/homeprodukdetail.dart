import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike/homenavigation/mainhome.dart';
import 'package:nike/like/like.dart';

class DetailProdukHome extends StatelessWidget {
  const DetailProdukHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade50,
        leading: Padding(
          padding: const EdgeInsets.only(top: 10, left: 15),
          child: CircleAvatar(
            minRadius: 25,
            backgroundColor: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MainHome(),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
        title: Center(
          child: Text(
            'Sneaker Shop',
            style: GoogleFonts.raleway(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF2B2B2B)),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: CircleAvatar(
              minRadius: 20,
              backgroundColor: Colors.white,
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MaintenceDetail(),
                    ),
                  );
                },
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 20),
              child: Text(
                'Nike Air Max 270 \nEssentinal',
                style: GoogleFonts.raleway(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFF2B2B2B),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 5),
              child: Text(
                'Men\'s Shoes',
                style: GoogleFonts.raleway(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF707BB1),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 5),
              child: Text(
                '\$179.39',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF2B2B2B),
                ),
              ),
            ),
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 170),
                  child: Image.asset('assets/images/detail/alas.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: Image.asset('assets/images/detail/0.png'),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      width: 70,
                      height: 70,
                      color: Colors.white,
                      child: Image.asset('assets/images/detail/hero1.png'),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      width: 70,
                      height: 70,
                      color: Colors.white,
                      child: Image.asset(
                        'assets/images/detail/nike1.png',
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      width: 70,
                      height: 70,
                      color: Colors.white,
                      child: Image.asset(
                        'assets/images/detail/nike2.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      width: 70,
                      height: 70,
                      color: Colors.white,
                      child: Image.asset(
                        'assets/images/detail/nike3.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      width: 70,
                      height: 70,
                      color: Colors.white,
                      child: Image.asset('assets/images/detail/nike4.png'),
                    ),
                  ),
                ],
              ),
            ),
            const YourWidget(),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Expanded(child: CircleAvatar(child: FavoriteButton())),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(210, 50),
                      backgroundColor: const Color(0xFF0D6EFD),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MaintenceDetail(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.shopping_bag_outlined),
                      const SizedBox(width: 15),
                      Text('Add To Cart',
                          style: GoogleFonts.raleway(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white))
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MaintenceDetail extends StatelessWidget {
  const MaintenceDetail({super.key});

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
                builder: (context) => const DetailProdukHome(),
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

class YourWidget extends StatefulWidget {
  const YourWidget({Key? key}) : super(key: key);

  @override
  _YourWidgetState createState() => _YourWidgetState();
}

class _YourWidgetState extends State<YourWidget> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
          child: Text(
            'The Max Air 270 unit delivers unrivaled, all-day comfort. The sleek, running-inspired design roots you to everything Nike. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin tincidunt urna vel elit luctus, vel pellentesque nisl fermentum. Nulla euismod mi nec justo fermentum, at tristique metus ultrices. Suspendisse potenti. Vivamus dictum urna vitae justo sagittis euismod. Nam ut ligula nec nunc volutpat volutpat. Duis sit amet malesuada ligula, eu vehicula purus. Integer ac est vitae sem consectetur facilisis nec id odio. Curabitur sed hendrerit nulla, eget tristique augue. Donec non urna at odio euismod consectetur id at libero. In hac habitasse platea dictumst. Aliquam facilisis risus at massa venenatis, vitae venenatis sapien elementum. In scelerisque felis in mi interdum, in varius nunc rhoncus. Suspendisse potenti.',
            maxLines: isExpanded ? null : 4,
            overflow: isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
            style: GoogleFonts.poppins(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: const Color(0xFF707B81),
              height: 1.3,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
              child: Text(
                isExpanded ? 'Read Less' : 'Read More',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF0D6EFD),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
