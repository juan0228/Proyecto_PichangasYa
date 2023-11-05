import 'package:app_pichangasya/pages/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 80), // Espacio adicional en la parte superior del logo
            ClipRRect(
              borderRadius: BorderRadius.circular(20), // Ajusta el radio para esquinas redondeadas
              child: Image.asset(
                'assets/images/logo.jpeg',
                width: 200,
                height: 200,
              ),
            ),
            SizedBox(height: 50), // Espacio adicional entre el logo y los botones
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                ); // Acción al hacer clic en el botón de Facebook
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20), // Ajusta el radio para esquinas redondeadas
                ),
              ),
              icon: Icon(Icons.facebook),
              label: Text(
                'Continuar con cuenta Facebook',
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                ); // Acción al hacer clic en el botón de Google
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20), // Ajusta el radio para esquinas redondeadas
                ),
              ),
              icon: Icon(Icons.android),
              label: Text(
                'Continuar con cuenta Google',
                style: TextStyle(fontSize: 18),
              ),
            ),
            Spacer(),
            Text(
              'Términos y condiciones',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

