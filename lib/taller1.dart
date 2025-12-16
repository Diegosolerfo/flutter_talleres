import 'package:flutter/material.dart';

// void app() => runApp(MyApp());

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
  final projects = List<int>.generate(9, (i) => i + 1);

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

      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(height: 8),
              Expanded(
                flex: 2,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 20),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 45,
                            backgroundImage: AssetImage('assets/img.jpg'),
                          ),
                          SizedBox(height: 24),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.mail, size: 20, color: Colors.blue),
                                  SizedBox(width: 8),
                                  Text("diegosolerfo90@gmail.com"),
                                ],
                              ),
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Icon(Icons.star, size: 20, color: Colors.amber),
                                  SizedBox(width: 8),
                                  Text("4.8"),
                                ],
                              ),
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Icon(Icons.car_crash, size: 20, color: Colors.red),
                                  SizedBox(width: 8),
                                  Text("Buen conductor"),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Descripción",
                                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
                            Text("General",
                                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
                            SizedBox(height: 16),
                            textItem("HÁBITOS"),
                            Text("programar · deporte · lectura", style: TextStyle(fontSize: 16)),
                            SizedBox(height: 10),
                            textItem("PROFESIÓN"),
                            Text("Desarrollador · BackEnd", style: TextStyle(fontSize: 16)),
                            SizedBox(height: 10),
                            textItem("PERFIL"),
                            Text("Usuario avanzado · Administrador", style: TextStyle(fontSize: 16)),
                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(right: 25, top: 30),
                      child: Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                        child: Container(
                          width: 170,
                          padding: EdgeInsets.all(12),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ElevatedButton(
                                onPressed: () => print("Ingresos pulsado"),
                                child: SizedBox(width: double.infinity, child: Center(child: Text("Ingresos"))),
                              ),
                              SizedBox(height: 8),
                              ElevatedButton(
                                onPressed: () => print("Salidas pulsado"),
                                child: SizedBox(width: double.infinity, child: Center(child: Text("Salidas"))),
                              ),
                              SizedBox(height: 8),
                              ElevatedButton(
                                onPressed: () => print("Productos pulsado"),
                                child: SizedBox(width: double.infinity, child: Center(child: Text("Productos"))),
                              ),
                              SizedBox(height: 8),
                              ElevatedButton(
                                onPressed: () => print("Cursos pulsado"),
                                child: SizedBox(width: double.infinity, child: Center(child: Text("Cursos"))),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Proyectos", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                      SizedBox(height: 10),

                      
                      Expanded(
                        child: GridView.count(
                          crossAxisCount: 3, 
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          children: projects.map((i) => projectCard(context, i)).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          Align(
            alignment: Alignment.bottomRight, 
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text("Versión 1.0", style: TextStyle(color: Colors.black54)),
            ),
          ),
        ],
      ),
    );
  }

  Widget projectCard(BuildContext context, int index) {
    final title = "Proyecto $index";
    return InkWell(
      onTap: () => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Abriste $title"))),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        clipBehavior: Clip.hardEdge,
        elevation: 2,
        child: Stack(
          children: [
            Positioned.fill(
              child: Container(
                color: Colors.grey[200],
                child: (index % 2 == 0)
                    ? Image.asset('assets/project$index.jpg', fit: BoxFit.cover, errorBuilder: (_, __, ___) => Center(child: Icon(Icons.image, size: 40)))
                    : Center(child: Icon(Icons.work_outline, size: 40)),
              ),
            ),

            Positioned(
              left: 8,
              top: index.isOdd ? 8 : null,
              bottom: index.isOdd ? null : 8,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(color: Colors.black54, borderRadius: BorderRadius.circular(8)),
                child: Text(title, style: TextStyle(color: Colors.white, fontSize: 12)),
              ),
            ),

            Positioned(
              right: 8,
              bottom: 8,
              child: InkWell(
                onTap: () => print("Like proyecto $index"),
                child: Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(color: Colors.white70, shape: BoxShape.circle),
                  child: Icon(Icons.favorite_border, size: 18, color: Colors.redAccent),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget textItem(String title) => Padding(
    padding: const EdgeInsets.symmetric(vertical: 3),
    child: Text(title, style: TextStyle(fontSize: 18)),
  );
}
