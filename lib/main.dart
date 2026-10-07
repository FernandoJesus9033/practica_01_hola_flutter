import 'package:flutter/material.dart';

void main() => runApp(const TarjetaPersonalApp());

class TarjetaPersonalApp extends StatelessWidget {
  const TarjetaPersonalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tarjeta Personal',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const TarjetaPersonalPage(),
    );
  }
}

class TarjetaPersonalPage extends StatelessWidget {
  const TarjetaPersonalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Tarjeta Personal'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Avatar / Ícono
              const CircleAvatar(
                radius: 60,
                backgroundColor: Colors.deepPurple,
                child: Icon(Icons.person, size: 60, color: Colors.white),
              ),
              const SizedBox(height: 20),

              // Nombre
              const Text(
                'Fernando Jesus Colli Cach',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),

              // Carrera
              Text(
                'Ingeniería en Sistemas Computacionales',
                style: TextStyle(fontSize: 18, color: Colors.grey[700]),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 5),

              // Semestre
              Text(
                'Semestre 7 - Grupo A',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(height: 30),

              // Habilidades
              const Text(
                'Habilidades',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),

              // Fila de habilidades (Row)
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _HabilidadChip(icon: Icons.code, label: 'Flutter'),
                  SizedBox(width: 10),
                  _HabilidadChip(icon: Icons.data_object, label: 'Dart'),
                  SizedBox(width: 10),
                  _HabilidadChip(icon: Icons.design_services, label: 'UI/UX'),
                ],
              ),
              const SizedBox(height: 30),

              // Mensaje de bienvenida
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.deepPurple[50],
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.deepPurple[200]!),
                ),
                child: const Text(
                  '✨ ¡Bienvenido a mi perfil! ✨\nSiempre aprendiendo nuevas tecnologías.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, height: 1.5),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Widget reutilizable para habilidades
class _HabilidadChip extends StatelessWidget {
  final IconData icon;
  final String label;

  const _HabilidadChip({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.deepPurple[100],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 18, color: Colors.deepPurple[800]),
          const SizedBox(width: 6),
          Text(
            label,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.deepPurple[800],
            ),
          ),
        ],
      ),
    );
  }
}
