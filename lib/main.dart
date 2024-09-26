import 'package:flutter/material.dart';
import 'page2.dart'; // Make sure this file contains the Page2 class

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/page2': (context) => Page2(), // Define the route for Page2
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand, // Ensures the background image fills the entire screen
        children: <Widget>[
          // Background image for the entire page
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background.jpg"), // Full-page background image
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Centered container with Stack, image, and text
          Center(
            child: Container(
              width: 300, // Width of the stack
              height: 400, // Height of the stack
              decoration: BoxDecoration(
                color: Colors.teal.withOpacity(0.8), // Background color for the stack
                borderRadius: BorderRadius.circular(20), // Optional rounded corners
              ),
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  // Circular image
                  Positioned(
                    top: 40, // Position the image within the stack
                    child: ClipOval(
                      child: Image.asset(
                        "assets/images/OIP.jpg",
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // Text and button below the image
                  Positioned(
                    top: 220, // Adjust based on the image height
                    child: Column(
                      children: [
                        Text(
                          'Muhammad Asari',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10),
                        // Container for the description text and button
                        Container(
                          width: 250, // Set the desired width of the text
                          padding: const EdgeInsets.all(8.0), // Optional padding
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10), // Rounded corners
                          ),
                          child: Column(
                            children: [
                              Text(
                                'Vocational High School student at SMK Wikrama Bogor',
                                textAlign: TextAlign.center, // Center-align the text
                                overflow: TextOverflow.ellipsis, // Handle overflow with ellipsis
                                maxLines: 4, // Set the maximum number of lines
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 10), // Space between the text and the button
                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/page2'); // Use named route
                                },
                                child: Text(
                                  'See More',
                                  style: TextStyle(color: Colors.white), // Button text color
                                ),
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.teal.withOpacity(0.6), // Optional button background color
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
