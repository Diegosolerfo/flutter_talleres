import 'package:flutter/material.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff8f2f8),
      appBar: AppBar(
        title: Text("DASF"),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 1,
        foregroundColor: Colors.black,
      ),
      body: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 20),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 45,
                  backgroundImage: AssetImage('assets/img.jpg'),
                ),
                SizedBox(height: 40),
                Column(
                  children: [
                    Icon(Icons.star, size: 22, color: Colors.amber),
                    SizedBox(width: 8),
                  Text("4.8"),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Descripción",
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
                  Text("General",
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
                  SizedBox(height: 20),
                  textItem("Hábitos\n programar \n deporte \n lectura"),
                  SizedBox(height: 8),
                  textItem("Profesión\n Desarrollador \n BackEnd"),
                  textItem("Perfil\n Usuario avanzado \n Administrador"),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
            padding: const EdgeInsets.only(bottom: 550),
            child: Card(
              elevation: 3,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
              child: Container(
                width: 150,
                padding: EdgeInsets.all(18),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    cardItem("Ingresos"),
                    cardItem("Salidas"),
                    cardItem("Productos"),
                    cardItem("Cursos"),
                  ],
                ),
              ),
            ),
          ),
          ),
        ],
      ),
    );
  }
  Widget textItem(String title) => Padding(
    padding: const EdgeInsets.symmetric(vertical:3),
    child: Text(title, style: TextStyle(fontSize: 18)),
  );
  Widget cardItem(String title) => Padding(
    padding: const EdgeInsets.symmetric(vertical: 3),
    child: Text(title, style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500)),
  );
}