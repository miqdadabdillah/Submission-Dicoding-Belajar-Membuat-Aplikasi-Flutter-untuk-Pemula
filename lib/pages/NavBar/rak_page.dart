import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RakPage extends StatelessWidget {
  const RakPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pinjaman Buku',
          style: GoogleFonts.poppins(
            color: const Color(0xFF404040),
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Padding(
              padding: constraints.maxWidth > 1024
                  ? const EdgeInsets.only(left: 50, top: 30, right: 50)
                  : const EdgeInsets.only(left: 24, top: 10, right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: constraints.maxWidth > 1020 ? 30 : 0),
                          Container(
                            width: constraints.maxWidth > 1020
                                ? constraints.maxWidth * 0.2
                                : constraints.maxWidth * 0.4,
                            decoration: BoxDecoration(
                              color: const Color(0xffF3F4F8),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/2.png',
                                    width: constraints.maxWidth * 0.4,
                                  ),
                                  Text(
                                    'Ya Allah, Aku Pulang',
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    'Alfialghazi',
                                    style: GoogleFonts.poppins(
                                      color: const Color(0xffC7C9D9),
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
