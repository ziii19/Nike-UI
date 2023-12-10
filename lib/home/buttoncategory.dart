import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:nike/home/homepage.dart';

class CategoryButton extends StatefulWidget {
  const CategoryButton({super.key});

  @override
  State<CategoryButton> createState() => _CategoryButtonState();
}

class _CategoryButtonState extends State<CategoryButton> {
  int activeButton = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 40,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            buildButton('All Shoes', 0),
            const SizedBox(width: 10),
            buildButton('Sneakers', 1),
            const SizedBox(width: 10),
            buildButton('Jordan', 2),
            const SizedBox(width: 10),
            buildButton('Lifestyle', 3),
            const SizedBox(width: 10),
            buildButton('Running', 4),
            const SizedBox(width: 10),
            buildButton('Football', 5),
            const SizedBox(width: 10),
          ],
        ),
      ),
    );
  }

  Widget buildButton(String text, int index) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor:
              activeButton == index ? const Color(0xFF0D6EFD) : Colors.white,
          foregroundColor: activeButton == index ? Colors.white : Colors.black,
          minimumSize: const Size(110, 40),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
      onPressed: () {
        setState(() {
          activeButton = index;
        });
      },
      child: Text(
        text,
        style: GoogleFonts.poppins(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          letterSpacing: 1,
          color: activeButton == index ? Colors.white : const Color(0xFF2B2B2B),
        ),
      ),
    );
  }
}





//  Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: SizedBox(
//                 height: 40,
//                 child: ListView(
//                   scrollDirection: Axis.horizontal,
//                   children: [
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                           backgroundColor: Colors.white,
//                           foregroundColor: Colors.black,
//                           minimumSize: const Size(110, 40),
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(8))),
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => const Maintence(),
//                           ),
//                         );
//                       },
//                       child: Text(
//                         'All Shoes',
//                         style: GoogleFonts.poppins(
//                           fontSize: 12,
//                           fontWeight: FontWeight.w400,
//                           letterSpacing: 1,
//                           color: const Color(0xFF2B2B2B),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(width: 10),
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                           backgroundColor: const Color(0xFF0D6EFD),
//                           foregroundColor: Colors.white,
//                           minimumSize: const Size(110, 40),
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(8))),
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => const Maintence(),
//                           ),
//                         );
//                       },
//                       child: Text(
//                         'Outdoor',
//                         style: GoogleFonts.poppins(
//                           fontSize: 12,
//                           fontWeight: FontWeight.w400,
//                           letterSpacing: 1,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                     const SizedBox(width: 10),
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                           backgroundColor: Colors.white,
//                           foregroundColor: Colors.black,
//                           minimumSize: const Size(110, 40),
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(8))),
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => const Maintence(),
//                           ),
//                         );
//                       },
//                       child: Text(
//                         'Tennis',
//                         style: GoogleFonts.poppins(
//                           fontSize: 12,
//                           fontWeight: FontWeight.w400,
//                           letterSpacing: 1,
//                           color: const Color(0xFF2B2B2B),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(width: 10),
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                           backgroundColor: Colors.white,
//                           foregroundColor: Colors.black,
//                           minimumSize: const Size(110, 40),
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(8))),
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => const Maintence(),
//                           ),
//                         );
//                       },
//                       child: Text(
//                         'Jordan',
//                         style: GoogleFonts.poppins(
//                           fontSize: 12,
//                           fontWeight: FontWeight.w400,
//                           letterSpacing: 1,
//                           color: const Color(0xFF2B2B2B),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(width: 10),
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                           backgroundColor: Colors.white,
//                           foregroundColor: Colors.black,
//                           minimumSize: const Size(110, 40),
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(8))),
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => const Maintence(),
//                           ),
//                         );
//                       },
//                       child: Text(
//                         'Nike Air',
//                         style: GoogleFonts.poppins(
//                           fontSize: 12,
//                           fontWeight: FontWeight.w400,
//                           letterSpacing: 1,
//                           color: const Color(0xFF2B2B2B),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(width: 10),
//                   ],
//                 ),
//               ),
//             ),
