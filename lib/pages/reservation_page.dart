import 'package:flutter/material.dart';
import 'styles.dart';

class ReservationPage extends StatelessWidget {
  const ReservationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Buscar Canchas Deportivas:',
              style: AppStyles.headlineTextStyle,
            ),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Buscar canchas deportivas por nombre o ubicación',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(vertical: 12),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: availableSportsCourts.length,
                itemBuilder: (BuildContext context, int index) {
                  final court = availableSportsCourts[index];
                  return _buildCourtCard(context, court);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCourtCard(BuildContext context, SportsCourt court) {
    return GestureDetector(
      onTap: () {
        // Acción al seleccionar una cancha deportiva
      },
      child: Card(
        elevation: 2,
        margin: const EdgeInsets.symmetric(vertical: 8),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                court.name,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                court.location,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 8),
              Text(
                'Disponibilidad: ${court.availability}',
                style: const TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SportsCourt {
  final String name;
  final String location;
  final String availability;

  SportsCourt({
    required this.name,
    required this.location,
    required this.availability,
  });
}

final List<SportsCourt> availableSportsCourts = [
  SportsCourt(
      name: 'La caleta',
      location: 'Av. Tomas Marsano cuadra 48',
      availability: 'Disponible'),
  SportsCourt(
      name: 'Entre Pelotas',
      location: 'Av. Los Frutales 561',
      availability: 'No disponible'),
  SportsCourt(
      name: 'Depor Center',
      location: 'Av. Jiron Antonio Cabo',
      availability: 'Disponible'),
  SportsCourt(
      name: 'Depor soccer',
      location: 'Av. Jiron Antonio Cabo',
      availability: 'Disponible'),
  SportsCourt(
      name: 'Complejo Pepe',
      location: 'Av. Jiron Antonio Cabo',
      availability: 'No disponible'),
  // Agrega más canchas según sea necesario
];
