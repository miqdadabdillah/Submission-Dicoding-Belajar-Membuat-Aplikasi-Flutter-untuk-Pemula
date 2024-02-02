import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Padding(
              padding: constraints.maxWidth > 1024
                  ? const EdgeInsets.only(left: 50, top: 30, right: 50)
                  : const EdgeInsets.only(left: 24, top: 30, right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        'e-Perpustakaan \nModern',
                        style: GoogleFonts.poppins(
                          color: const Color(0xFF404040),
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: constraints.maxWidth > 1020
                            ? MainAxisAlignment.start
                            : MainAxisAlignment.spaceBetween,
                        children: [
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
                                    'assets/1.jpg',
                                    width: constraints.maxWidth * 0.4,
                                  ),
                                  Text(
                                    'Maaf Tuhan Aku Hampir Menyerah',
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
                                  const SizedBox(height: 16),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.remove_red_eye_rounded,
                                        size: 20,
                                        color: Color(0xffC7C9D9),
                                      ),
                                      SizedBox(width: 4),
                                      Text('998'),
                                      SizedBox(width: 16),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
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
                                  const SizedBox(height: 16),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.remove_red_eye_rounded,
                                        size: 20,
                                        color: Color(0xffC7C9D9),
                                      ),
                                      SizedBox(width: 4),
                                      Text('888'),
                                      SizedBox(width: 16),
                                    ],
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
