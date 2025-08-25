import 'package:flutter/material.dart';

class ViArcane extends StatelessWidget {
  const ViArcane({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'VI',
          style: TextStyle(
            color: Colors.pink[300], // Le damos color al texto del título
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        // Permite hacer scroll si el contenido es largo
        child: Column(
          children: [
            // Sección de la imagen (arriba)
            Image.asset(
              'assets/images/vi.jpg', // Ruta a tu imagen
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),

            // Sección del título y la estrella
            Padding(
              padding: const EdgeInsets.all(32),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Vi Arcane History',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Zaun, City',
                          style: TextStyle(color: Colors.pink[400]),
                        ),
                      ],
                    ),
                  ),
                  Icon(Icons.star, color: Colors.pink[400]),
                  const Text('50'),
                ],
              ),
            ),

            // Sección de los íconos de "CALL", "ROUTE", "SHARE"
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildButtonColumn(Icons.call, 'CALL'),
                _buildButtonColumn(Icons.near_me, 'ROUTE'),
                _buildButtonColumn(Icons.share, 'SHARE'),
              ],
            ),

            // Sección del texto descriptivo
            const Padding(
              padding: EdgeInsets.all(32),
              child: Text(
                'Vi apenas recuerda su infancia en Zaun, y lo poco que recuerda preferiría haberlo olvidado. Se pasaba los días por las calles con las bandas del Sumidero, y pronto se vio obligada a aprender a hacer uso de su astucia y de sus puños para sobrevivir. Todos los que se cruzaban con ella sabían que era capaz de salir de cualquier aprieto, ya fuera a través del diálogo o a base de puñetazos. Solía elegir la segunda opción.',
                softWrap: true,
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Función de ayuda para crear los botones con íconos
  Column _buildButtonColumn(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: Colors.orange[400]),
        const SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Colors.pink[400],
          ),
        ),
      ],
    );
  }
}
