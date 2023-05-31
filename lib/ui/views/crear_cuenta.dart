import 'package:flutter/material.dart';

class CrearCuenta extends StatelessWidget {
  const CrearCuenta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: ListView(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            Text(
              'Crear Cuenta',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                  icon: Icon(Icons.abc),
                  hintText: 'nombre',
                  labelText: 'Nombre'),
            ),
            SizedBox(height: 16),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                icon: Icon(Icons.email),
                hintText: 'ejemplo@email.com',
                labelText: 'Email',
              ),
            ),
            SizedBox(height: 16),
            TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                icon: Icon(Icons.phone),
                hintText: 'teléfono',
                labelText: 'Teléfono',
              ),
            ),
            SizedBox(height: 16),
            TextField(
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                icon: Icon(Icons.lock),
                hintText: 'contraseña',
                labelText: 'Contraseña',
              ),
              obscureText: true,
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.lock),
                hintText: 'confirmar contraseña',
                labelText: 'Confirmar Contraseña',
              ),
              obscureText: true,
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/login'),
              child: Text(
                'Crear Cuenta',
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
                onPressed: () => Navigator.pushNamed(context, '/login'),
                child: Text(
                  '¿Ya tienes una cuenta? Inicia sesión',
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
