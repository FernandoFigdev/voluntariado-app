import 'package:flutter/material.dart';

class OportunidadesScreen extends StatelessWidget {
  const OportunidadesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Oportunidades'),
      ),
      body: const Center(
        child: Text('Aqui serão listadas as oportunidades de voluntariado.'),
      ),
    );
  }
}