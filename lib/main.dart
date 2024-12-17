import 'package:flutter/material.dart';

void main() {
  runApp(const GamifyApp());
}

class GamifyApp extends StatelessWidget {
  const GamifyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gamify UI',
      theme: ThemeData.dark(), // Dark theme for similar styling
      home: const GamifyHomePage(),
    );
  }
}

class GamifyHomePage extends StatelessWidget {
  const GamifyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gamify"),
        centerTitle: true,
        actions: const [
          Icon(Icons.circle_outlined, color: Colors.white),
          Icon(Icons.circle_outlined, color: Colors.white),
          Icon(Icons.circle_outlined, color: Colors.white),
        ],
      ),
      body: Column(
        children: [
          // Upload Background Section
          Container(
            padding: const EdgeInsets.all(12.0),
            color: Colors.black54,
            child: const Center(
              child: Text(
                "Upload your own background",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          // Main Body Section
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Left Vertical Container: User Introduction and Goals
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.black87,
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.orange,
                          child: Icon(Icons.person, size: 40, color: Colors.black),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "User introduction...",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        const SizedBox(height: 20),
                        const Divider(color: Colors.white54),
                        const Text(
                          "Goals:",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        const Text(
                          "- balabalabalabalabala...",
                          style: TextStyle(color: Colors.white70),
                        ),
                        const Spacer(),
                        const Text(
                          "Level:",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        LinearProgressIndicator(
                          value: 0.6, // Example progress value
                          backgroundColor: Colors.grey,
                          color: Colors.orange,
                        ),
                      ],
                    ),
                  ),
                ),
                // Main Quest Section
                Expanded(
                  flex: 2,
                  child: _buildQuestSection("Main quest"),
                ),
                // Side Quest Section
                Expanded(
                  flex: 2,
                  child: _buildQuestSection("Side quest"),
                ),
                // Daily Quest Section
                Expanded(
                  flex: 2,
                  child: _buildQuestSection("Daily quest"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to build each quest section
  Widget _buildQuestSection(String title) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(5),
      color: Colors.black54,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "*clickable",
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(height: 10),
          const Text(
            "Lorem ipsum dolor sit amet, \n\\progress bar\\",
            style: TextStyle(color: Colors.white70),
          ),
          const SizedBox(height: 10),
          const Text(
            "- subtask ==============",
            style: TextStyle(color: Colors.white70),
          ),
        ],
      ),
    );
  }
}
