import 'package:flutter/material.dart';
import 'package:flutter_montoya/ui/views/crear_cuenta.dart';
import 'package:flutter_montoya/ui/views/login.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  const MiApp({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mi App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Inicio(),
        '/login': (context) => Login(),
        '/crear_cuenta': (context) => CrearCuenta(),
      },
    );
  }
}

class Inicio extends StatelessWidget {
  Inicio({key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MI APP DELIVERY"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "Bienvenido a eBox",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.blue),
              ),
            ),
            SizedBox(height: 30),
            Image.asset(
              'assets/Delivery eBox.gif',
            ),
            SizedBox(height: 30),
            Text(
              'Somos una empresa 100% peruana, dedicada a ofrecer productos de alta calidad; Ofrecemos la mejor relación Precio-Calidad del mercado.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/login'),
              child: Text(
                'Ingresar aqui',
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
          ],
        ),
      ),
    );
  }
}
