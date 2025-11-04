import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VCardScreen extends StatelessWidget {
  const VCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Tarjeta Digital'),
        centerTitle: true,
      ),
      backgroundColor: Colors.purpleAccent[700],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            color: Colors.white,
              elevation: 40,
                shadowColor: Colors.blue,
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/profile.png'),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Krystal S. Pérez Rosado',
                    style: GoogleFonts.lato(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'kperez2760@arecibointer.edu',
                    style: GoogleFonts.openSans(fontSize: 16),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    '+1 (123) 456-7890',
                    style: GoogleFonts.openSans(fontSize: 16),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'https://github.com/Seliz05',
                    style: GoogleFonts.openSans(
                      fontSize: 16,
                      color: Colors.blue,
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Código QR
                  Image.asset(
                    'assets/qrcode.png',
                    width: 100,
                    height: 100,
                  ),
                  const SizedBox(height: 20),
                  // Usuario de GitHub
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text(
                          'Usuario de Github: Seliz05',
                          style: GoogleFonts.openSans(fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}