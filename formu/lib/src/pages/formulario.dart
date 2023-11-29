import 'package:flutter/material.dart';

class formulario extends StatefulWidget {
  const formulario({super.key});

  @override
  State<formulario> createState() => _formularioState();
}

class _formularioState extends State<formulario> {

  String selectedGender = '';
  bool subscribeToNewsletter = false;
  List<String> selectedHobbies = [];
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulario de Clientes'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Nombre'),
            ),
            SizedBox(height: 20),
            Text('Género:'),
            Row(
              children: [
                Radio(
                  value: 'Masculino',
                  groupValue: selectedGender,
                  onChanged: (value) {
                    setState(() {
                      selectedGender = value!;
                    });
                  },
                ),
                Text('Masculino'),
                Radio(
                  value: 'Femenino',
                  groupValue: selectedGender,
                  onChanged: (value) {
                    setState(() {
                      selectedGender = value!;
                    });
                  },
                ),
                Text('Femenino'),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Checkbox(
                  value: subscribeToNewsletter,
                  onChanged: (value) {
                    setState(() {
                      subscribeToNewsletter = value!;
                    });
                  },
                ),
                Text('Suscribirse al boletín de noticias'),
              ],
            ),
            SizedBox(height: 20),
            Text('Hobbies:'),
            CheckboxListTile(
              title: Text('Deportes'),
              value: selectedHobbies.contains('Deportes'),
              onChanged: (value) {
                setState(() {
                  if (value!) {
                    selectedHobbies.add('Deportes');
                  } else {
                    selectedHobbies.remove('Deportes');
                  }
                });
              },
            ),
            CheckboxListTile(
              title: Text('Arte'),
              value: selectedHobbies.contains('Arte'),
              onChanged: (value) {
                setState(() {
                  if (value!) {
                    selectedHobbies.add('Arte');
                  } else {
                    selectedHobbies.remove('Arte');
                  }
                });
              },
            ),

            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Guardar y Salir'),
            ),
          ],
        ),
      ),
    );
  }
}