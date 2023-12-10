import 'package:flutter/material.dart';
import 'package:nike/homenavigation/mainhome.dart';
import 'package:nike/detail/detailproduk.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike/like/like.dart';
import 'package:nike/nike-produk/data.dart';

class ProdukNike extends StatelessWidget {
  const ProdukNike({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return const ProdukNikeGrid(
              gridCount: 2,
            );
          } else if (constraints.maxWidth <= 1200) {
            return const ProdukNikeGrid(gridCount: 3);
          } else {
            return const ProdukNikeGrid(
              gridCount: 6,
            );
          }
        },
      ),
    );
  }
}

class ProdukNikeGrid extends StatelessWidget {
  final int gridCount;
  const ProdukNikeGrid({super.key, required this.gridCount});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MainHome(),
              ),
            );
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: Center(
          child: Text(
            'NIKE STORE',
            style: GoogleFonts.raleway(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF2B2B2B),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const MaintenceProduk(),),);
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: gridCount,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.75,
          children: produkList.map((produk) {
            return Container(
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
                          child: Image.asset(produk.imgProduk),
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
                            produk.rate,
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: const Color(0XFF0D6EFD),
                            ),
                          ),
                          Text(
                            produk.merk,
                            style: GoogleFonts.raleway(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF6A6A6A),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                produk.price,
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
                                            const DetailProduk(),
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
            );
          }).toList(),
        ),
      ),
    );
  }
}

class MaintenceProduk extends StatelessWidget {
  const MaintenceProduk({super.key});

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
                builder: (context) => const ProdukNike(),
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