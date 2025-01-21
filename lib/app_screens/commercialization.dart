import 'package:flutter/material.dart';


class CommercializationScreen extends StatelessWidget {
  const CommercializationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Commercialization"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Commercialization Options",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Logic for upgrading to premium
              },
              child: const Text("Upgrade to Premium"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Logic for ethical partnerships
              },
              child: const Text("Ethical Partnerships"),
            ),
          ],
        ),
      ),
    );
  }
}