import 'package:flutter/material.dart';

void main() {
  runApp(const MiApp());
}

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mi Perfil Académico Interactivo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        scaffoldBackgroundColor: const Color(0xFFF3F6FC),
      ),
      home: const MiPerfilAcademico(),
    );
  }
}

class MiPerfilAcademico extends StatefulWidget {
  const MiPerfilAcademico({super.key});

  @override
  State<MiPerfilAcademico> createState() =>
      _MiPerfilAcademicoState();
}

class _MiPerfilAcademicoState
    extends State<MiPerfilAcademico> {

  // VARIABLES Y TIPOS DE DATOS

  String nombre = 'Anahy Milagros Calcina Rodriguez';

  int numeroPersonal = 29;

  double promedioPonderado = 16.5;

  bool estaMatriculada = true;

  // CONTADOR DE LOGROS INICIALIZADO EN EL NP
  int logrosAcademicos = 29;

  @override
  Widget build(BuildContext context) {

    // LOGICA IF-ELSE: CLASIFICACION DEL NP

    String mensajeParidad;

    if (numeroPersonal % 2 == 0) {
      mensajeParidad = 'Tu número personal es par';
    } else {
      mensajeParidad = 'Tu número personal es impar';
    }

    String mensajeNivel;

    if (numeroPersonal > 50) {
      mensajeNivel = 'Número personal alto';
    } else {
      mensajeNivel = 'Número personal bajo';
    }

    // LOGICA FOR: GENERAR LOS 5 MULTIPLOS

    List<int> multiplos = [];

    for (int i = 1; i <= 5; i++) {
      multiplos.add(numeroPersonal * i);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Anahy Milagros Calcina Rodriguez',
          style: TextStyle(fontSize: 16),
        ),
        centerTitle: true,
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            // ENCABEZADO

            const Icon(
              Icons.school,
              size: 75,
              color: Colors.indigo,
            ),

            const SizedBox(height: 10),

            const Text(
              'MI PERFIL ACADÉMICO INTERACTIVO xd',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
                color: Colors.indigo,
              ),
            ),

            const SizedBox(height: 6),

            const Text(
              'Aplicaciones Móviles - Flutter',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 20),

            // DATOS PERSONALES

            Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16),

                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,

                  children: [

                    const Text(
                      'Mis datos académicos',
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo,
                      ),
                    ),

                    const Divider(),

                    ListTile(
                      leading: const Icon(
                        Icons.person,
                        color: Colors.indigo,
                      ),
                      title: const Text('Nombre completo'),
                      subtitle: Text(nombre),
                    ),

                    ListTile(
                      leading: const Icon(
                        Icons.numbers,
                        color: Colors.indigo,
                      ),
                      title: const Text('Número Personal (NP)'),
                      subtitle: Text('$numeroPersonal'),
                    ),

                    ListTile(
                      leading: const Icon(
                        Icons.grade,
                        color: Colors.indigo,
                      ),
                      title: const Text('Promedio ponderado'),
                      subtitle: Text('$promedioPonderado'),
                    ),

                    ListTile(
                      leading: const Icon(
                        Icons.check_circle,
                        color: Colors.green,
                      ),
                      title: const Text('¿Estoy matriculada?'),
                      subtitle: Text(
                        estaMatriculada ? 'Sí' : 'No',
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 16),

            // CLASIFICACION DEL NP

            Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16),

                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,

                  children: [

                    const Text(
                      'Clasificación de mi Número Personal',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo,
                      ),
                    ),

                    const Divider(),

                    Text(
                      mensajeParidad,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.deepPurple,
                      ),
                    ),

                    const SizedBox(height: 8),

                    Text(
                      mensajeNivel,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.teal,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 16),

            // MULTIPLOS DEL NP

            Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16),

                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,

                  children: [

                    const Text(
                      'Primeros 5 múltiplos de mi NP',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo,
                      ),
                    ),

                    const Divider(),

                    for (int i = 0; i < multiplos.length; i++)
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.indigo,
                          child: Text(
                            '${i + 1}',
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        title: Text(
                          '29 × ${i + 1} = ${multiplos[i]}',
                        ),
                      ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 16),

            // LOGROS ACADEMICOS

            Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16),

                child: Column(
                  children: [

                    const Text(
                      'Mis logros académicos',
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo,
                      ),
                    ),

                    const SizedBox(height: 12),

                    Text(
                      '$logrosAcademicos',
                      style: const TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo,
                      ),
                    ),

                    const Text(
                      'Logros académicos acumulados',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),

                    const SizedBox(height: 15),

                    ElevatedButton.icon(
                      onPressed: () {
                        setState(() {
                          logrosAcademicos++;
                        });
                      },
                      icon: const Icon(Icons.add),
                      label: const Text('Sumar logro'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.indigo,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 25,
                          vertical: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              'Desarrollado por Anahy Milagros Calcina Rodriguez',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),

            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}