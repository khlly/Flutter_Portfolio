import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // Fonction pour ouvrir des liens
  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Impossible d\'ouvrir $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
        title: Row(
          children: [
            Image.asset('assets/logo.png', height: 60), // Remplace par ton icône
            const SizedBox(width: 8), // Espacement entre l'icône et le texte
            const Text(
              'Portfolio',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/profile.png'), // Remplace avec ton image
            ),
            const SizedBox(height: 20),
            const Text(
              'Welcome to my Portfolio',
              style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 70, 70, 70)),
            ),
            const SizedBox(height: 10),
            const Text(
              'Hi I\'m',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Katheline JANNIN',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 255, 176, 86)),
            ),
            const Text(
              'IT Engineer',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 25),
            const Text(
              'Always looking for new challenges, I explore virtual reality and AI, while following advances in quantum computing with interest.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 92, 92, 92)),
            ),
            // Boutons
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _launchURL("mailto:katheline.jannin@outlook.fr"),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 255, 176, 86),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
              child: const Text(
                'Hire Me!',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: () => _launchURL("https://www.linkedin.com/in/katheline-jannin-924811229"),
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Color.fromARGB(255, 255, 176, 86)),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Download CV', style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 158, 116, 67))),
                  SizedBox(width: 5),
                  Icon(Icons.download, color: Color.fromARGB(255, 255, 176, 86)),
                ],
              ), 
            ),
          ],
        ),
      ),
    );
  }
}
