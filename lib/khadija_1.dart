import 'package:flutter/material.dart';

class CustomDesign extends StatelessWidget {
  const CustomDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Khadija_App'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Image with border
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                width: double.infinity,
                color: Colors.red,
                child: Center(
                  child: Container(
                    height: 100,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.cyan, width: 5),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/doll.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // Overlapping Squares
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 150,
                  width: 150,
                  color: Colors.blue,
                ),
                Positioned(
                  top: 30,
                  left: 50,
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.green,
                  ),
                ),
                Positioned(
                  left: 110,
                  top: 10,
                  child: Container(
                    height: 180,
                    width: 40,
                    color: Colors.red,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(9, (index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '${index + 1}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                ),
              ],
            ),

            // Instructional Text
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'PRACTICE MORE THAN THIS. IT WILL HELP YOU TO DESIGN COMPLEX MOBILE APP DESIGN',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),

            // Bottom section with image and text
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                width: double.infinity,
                color: Colors.green,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'LEADING',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      width: 80,
                      height: 80,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/images/k1.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Text(
                      'TRAILING',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
