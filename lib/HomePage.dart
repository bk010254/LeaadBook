import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Determine screen width to simulate responsiveness
    double screenWidth = MediaQuery.of(context).size.width;
    bool isDesktop = screenWidth > 800;
    bool isTablet = screenWidth > 600 && screenWidth <= 800;

    return Scaffold(
      body: Stack(
        children: [
          // Background Image (optional)
          // Positioned.fill(
          //   child: Image.asset(
          //     'assets/images/Screenshot_13.png',
          //     fit: BoxFit.cover,
          //   ),
          // ),
          // Top Header
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.white.withOpacity(0.9),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Logo and title

                  Row(
                    children: [
                      // Uncomment this line to add a logo
                      // Image.asset(
                      //   'assets/images/logo.png', // Replace with your logo path
                      //   height: 50,
                      // ),
                      SizedBox(width: 10),
                      Text(
                        'Neoinfinit',
                        style: TextStyle(
                          fontSize: isDesktop ? 24 : 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  // Responsive Menu items
                  if (isDesktop)
                    Row(
                      children: [
                        _buildMenuItem('HOME'),
                        _buildMenuItem('ABOUT'),
                        _buildMenuItem('SERVICES'),
                        _buildMenuItem('PROJECTS'),
                        _buildMenuItem('PAGES'),
                        _buildMenuItem('NEWS'),
                        _buildMenuItem('CONTACT'),
                      ],
                    )
                  else
                    IconButton(
                      icon: Icon(Icons.menu),
                      onPressed: () {
                        // Handle the menu button for mobile and tablet screens
                      },
                    ),
                  // Call to action button
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('GET A FREE'),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        horizontal: isDesktop ? 30 : 20,
                        vertical: isDesktop ? 15 : 10,
                      ),
                      textStyle: TextStyle(
                        fontSize: isDesktop ? 16 : 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Main Content
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'THE BEST CONSTRUCTION INDUSTRIAL SOLUTIONS',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color.fromARGB(255, 212, 90, 90),
                      fontSize: isDesktop
                          ? 24
                          : isTablet
                              ? 20
                              : 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'DREAM & BUILD',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color.fromARGB(255, 20, 13, 13),
                      fontSize: isDesktop
                          ? 48
                          : isTablet
                              ? 40
                              : 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('DISCOVER MORE'),
                    style: ElevatedButton.styleFrom(
                      // primary: Colors.blue, // Background color
                      fixedSize: Size(
                        isDesktop ? 200 : 150, // Width based on screen size
                        isDesktop ? 60 : 50, // Height based on screen size
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: isDesktop ? 20 : 15,
                        vertical: isDesktop ? 15 : 10,
                      ),
                      textStyle: TextStyle(
                        fontSize: isDesktop
                            ? 20
                            : isTablet
                                ? 18
                                : 16,
                      ),
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

  Widget _buildMenuItem(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          color: Colors.black87,
        ),
      ),
    );
  }
}
