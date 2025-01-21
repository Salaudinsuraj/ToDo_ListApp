import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Commercialization Options',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const CommercializationScreen(),
    );
  }
}

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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const UpgradeToPremiumScreen(),
                  ),
                );
              },
              child: const Text("Upgrade to Premium"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EthicalPartnershipsScreen(),
                  ),
                );
              },
              child: const Text("Ethical Partnerships"),
            ),
          ],
        ),
      ),
    );
  }
}

class UpgradeToPremiumScreen extends StatelessWidget {
  const UpgradeToPremiumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Upgrade to Premium"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const Text(
              "Benefits of Upgrading to Premium:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const ListTile(
              leading: Icon(Icons.star, color: Colors.amber),
              title: Text("Access exclusive features."),
            ),
            const ListTile(
              leading: Icon(Icons.verified, color: Colors.green),
              title: Text("Priority customer support."),
            ),
            const ListTile(
              leading: Icon(Icons.cloud_download, color: Colors.blue),
              title: Text("Higher storage capacity."),
            ),
            const ListTile(
              leading: Icon(Icons.lock_open, color: Colors.red),
              title: Text("Unlock all premium tools."),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Back to Commercialization"),
            ),
          ],
        ),
      ),
    );
  }
}

class EthicalPartnershipsScreen extends StatelessWidget {
  const EthicalPartnershipsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ethical Partnerships"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const Text(
              "Ways to Form Ethical Partnerships:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const ListTile(
              leading: Icon(Icons.handshake, color: Colors.green),
              title: Text("Collaborate with eco-friendly companies."),
            ),
            const ListTile(
              leading: Icon(Icons.people, color: Colors.blue),
              title: Text("Engage with fair trade organizations."),
            ),
            const ListTile(
              leading: Icon(Icons.public, color: Colors.teal),
              title: Text("Support local communities."),
            ),
            const ListTile(
              leading: Icon(Icons.volunteer_activism, color: Colors.purple),
              title: Text("Promote sustainable practices."),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Back to Commercialization"),
            ),
          ],
        ),
      ),
    );
  }
}
