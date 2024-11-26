import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Oportunidades de Voluntariado'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/logo.jpeg',
              height: 150,
            ),
            const SizedBox(height: 30),

            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 5,
              color: Colors.orangeAccent,
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/events');
                },
                borderRadius: BorderRadius.circular(15),
                child: SizedBox(
                  height: 120,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.event, size: 40, color: Colors.white),
                        SizedBox(height: 10),
                        Text(
                          'Ver Oportunidades',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 5,
              color: Colors.tealAccent,
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/registrations');
                },
                borderRadius: BorderRadius.circular(15),
                child: SizedBox(
                  height: 120,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.app_registration, size: 40, color: Colors.white),
                        SizedBox(height: 10),
                        Text(
                          'Minhas Inscrições',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
