import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              'Bienvenido a: ',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Flexible(
              child: Image.asset(
                'assets/eBox.jpeg',
              ),
            ),
            SizedBox(height: 16),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                icon: Icon(Icons.email),
                hintText: 'ejemplo@correo.com',
                labelText: 'Email',
              ),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.lock),
                hintText: 'contraseña',
                labelText: 'Contraseña',
              ),
              obscureText: true,
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/'),
              child: Text(
                'Iniciar Sesión',
                style: TextStyle(color: Colors.black, fontSize: 22),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 231, 223, 144),
                side: BorderSide(color: Colors.brown),
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
            SizedBox(height: 24),
            Center(
              child: TextButton(
                onPressed: () => Navigator.pushNamed(context, '/crear_cuenta'),
                child: Text(
                  '¿No tienes una cuenta? Regístrate',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Center(
              child: TextButton(
                onPressed: () => Navigator.pushNamed(context, '/crear_cuenta'),
                child: Text(
                  '¿Olvidaste tu contraseña?',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
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
