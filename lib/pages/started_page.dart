import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miqdadapp/pages/login_page.dart';

class StartedPage extends StatelessWidget {
  const StartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/bg.png'), fit: BoxFit.cover),
            ),
          ),
          LayoutBuilder(
            builder: (context, constraints) {
              return Padding(
                padding: const EdgeInsets.only(
                    top: 40, bottom: 40, left: 30, right: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: constraints.maxWidth > 600
                          ? CrossAxisAlignment.center
                          : CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Temukan Pengetahuan Anda di e-Perpustakaan Modern',
                          style: GoogleFonts.poppins(
                              fontSize: constraints.maxWidth > 600 ? 32 : 20,
                              color: Colors.white,
                              fontWeight: FontWeight.normal),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'Membaca Tanpa Batasan, Belajar Tanpa Henti',
                          style: GoogleFonts.poppins(
                              fontSize: constraints.maxWidth > 600 ? 18 : 10,
                              color: Colors.white,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Center(
                          child: SizedBox(
                            width: constraints.maxWidth > 600
                                ? 400
                                : constraints.maxWidth * 0.8,
                            height: 50,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(66))),
                              onPressed: () {},
                              child: Text(
                                'Get Started',
                                style: GoogleFonts.poppins(
                                    color: const Color(0xff404040),
                                    fontSize:
                                        constraints.maxWidth > 600 ? 14 : 10,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: constraints.maxWidth > 600 ? 16 : 16),
                        Center(
                          child: SizedBox(
                            width: constraints.maxWidth > 600
                                ? 400
                                : constraints.maxWidth * 0.8,
                            height: 50,
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  side: const BorderSide(color: Colors.white),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(66))),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const LoginPage()),
                                );
                              },
                              child: Text(
                                'Sign In',
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize:
                                        constraints.maxWidth > 600 ? 14 : 10,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
