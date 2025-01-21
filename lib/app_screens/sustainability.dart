import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sustainability Goals',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const SustainabilityScreen(),
    );
  }
}

class SustainabilityScreen extends StatelessWidget {
  const SustainabilityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sustainability"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Sustainability Goals",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ReducePaperWasteScreen(),
                  ),
                );
              },
              child: const Text("Reduce Paper Waste"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EncourageDigitalProcessesScreen(),
                  ),
                );
              },
              child: const Text("Encourage Digital Processes"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TrackCarbonFootprintScreen(),
                  ),
                );
              },
              child: const Text("Track Carbon Footprint"),
            ),
          ],
        ),
      ),
    );
  }
}

class ReducePaperWasteScreen extends StatelessWidget {
  const ReducePaperWasteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reduce Paper Waste"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const Text(
              "Steps to Reduce Paper Waste:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const ListTile(
              leading: Icon(Icons.check_circle, color: Colors.green),
              title: Text("Switch to digital documentation."),
            ),
            const ListTile(
              leading: Icon(Icons.check_circle, color: Colors.green),
              title: Text("Use reusable paper for notes."),
            ),
            const ListTile(
              leading: Icon(Icons.check_circle, color: Colors.green),
              title: Text("Encourage double-sided printing."),
            ),
            const ListTile(
              leading: Icon(Icons.check_circle, color: Colors.green),
              title: Text("Recycle used paper materials."),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Back to Sustainability Goals"),
            ),
          ],
        ),
      ),
    );
  }
}

class EncourageDigitalProcessesScreen extends StatelessWidget {
  const EncourageDigitalProcessesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Encourage Digital Processes"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const Text(
              "Ways to Encourage Digital Processes:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const ListTile(
              leading: Icon(Icons.cloud, color: Colors.blue),
              title: Text("Adopt cloud-based storage solutions."),
            ),
            const ListTile(
              leading: Icon(Icons.settings_suggest, color: Colors.blue),
              title: Text("Implement digital signatures."),
            ),
            const ListTile(
              leading: Icon(Icons.phone_android, color: Colors.blue),
              title: Text("Promote the use of mobile applications."),
            ),
            const ListTile(
              leading: Icon(Icons.desktop_mac, color: Colors.blue),
              title: Text("Encourage the use of collaboration tools."),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Back to Sustainability Goals"),
            ),
          ],
        ),
      ),
    );
  }
}

class TrackCarbonFootprintScreen extends StatelessWidget {
  const TrackCarbonFootprintScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Track Carbon Footprint"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const Text(
              "Steps to Track Carbon Footprint:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const ListTile(
              leading: Icon(Icons.eco, color: Colors.green),
              title: Text("Calculate emissions from energy usage."),
            ),
            const ListTile(
              leading: Icon(Icons.directions_car, color: Colors.green),
              title: Text("Track transportation-related emissions."),
            ),
            const ListTile(
              leading: Icon(Icons.factory, color: Colors.green),
              title: Text("Monitor industrial processes."),
            ),
            const ListTile(
              leading: Icon(Icons.local_dining, color: Colors.green),
              title: Text("Assess emissions from food and waste."),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Back to Sustainability Goals"),
            ),
          ],
        ),
      ),
    );
  }
}
