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
                    builder: (context) => const UpgradeToPremiumDetailsScreen(),
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
                    builder: (context) => const EthicalPartnershipDetailsScreen(),
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

class UpgradeToPremiumDetailsScreen extends StatelessWidget {
  const UpgradeToPremiumDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Upgrade to Premium Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const Text(
              "Why Upgrade to Premium?",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const ListTile(
              leading: Icon(Icons.check_circle, color: Colors.green),
              title: Text("Gain access to exclusive tools and features."),
            ),
            const ListTile(
              leading: Icon(Icons.person_add, color: Colors.blue),
              title: Text("Prioritize customer service requests."),
            ),
            const ListTile(
              leading: Icon(Icons.cloud_upload, color: Colors.teal),
              title: Text("Expand your cloud storage limits."),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PaymentScreen(),
                  ),
                );
              },
              child: const Text("Proceed to Payment"),
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

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Make Payment"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Upgrade to Premium - Payment",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              "Choose a payment method:",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ListTile(
              leading: const Icon(Icons.credit_card, color: Colors.blue),
              title: const Text("Credit/Debit Card"),
              onTap: () {
                // Handle card payment logic
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Card Payment Selected")),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.account_balance, color: Colors.green),
              title: const Text("Bank Transfer"),
              onTap: () {
                // Handle bank transfer logic
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Bank Transfer Selected")),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.payment, color: Colors.purple),
              title: const Text("Mobile Payment"),
              onTap: () {
                // Handle mobile payment logic
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Mobile Payment Selected")),
                );
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Back to Upgrade Details"),
            ),
          ],
        ),
      ),
    );
  }
}

class EthicalPartnershipDetailsScreen extends StatelessWidget {
  const EthicalPartnershipDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ethical Partnerships Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const Text(
              "What are Ethical Partnerships?",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const ListTile(
              leading: Icon(Icons.group, color: Colors.green),
              title: Text("Work with organizations that value sustainability."),
            ),
            const ListTile(
              leading: Icon(Icons.handshake, color: Colors.blue),
              title: Text("Engage in mutually beneficial collaborations."),
            ),
            const ListTile(
              leading: Icon(Icons.eco, color: Colors.teal),
              title: Text("Support environmentally conscious initiatives."),
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
