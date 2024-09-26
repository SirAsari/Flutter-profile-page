import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand, // Ensures the background image fills the entire screen
        children: [
          // Background image for the entire page
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background.jpg"), // Background image
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Content on top of the background
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Profile Image
                  Center(
                    child: ClipOval(
                      child: Image.asset(
                        "assets/images/OIP.jpg",
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: Text(
                      'Muhammad Asari',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black, // Change text color to contrast with background
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  Center(child: _buildStack('About', 'A Programmer born in indonesia, has a dream of becoming the next Tenz (Valorant Goat)')),
                  SizedBox(height: 20),
                  Center(child: _buildStack('History', 'Lahir pada tahun 2007, Bersekolah dasar di SDN Rancamaya Bogor, SMP Negeri 17 Bogor, dan saat ini di SMK Wikrama Bogor')),
                  SizedBox(height: 20),
                  Center(child: _buildStack('Skills', 'HTML, CSS, JavaScript')),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStack(String header, String description) {
    return Container(
      width: 300, // Set a fixed width for the stacks
      decoration: BoxDecoration(
        color: Colors.teal.withOpacity(0.8),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            header,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          Text(
            description,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
