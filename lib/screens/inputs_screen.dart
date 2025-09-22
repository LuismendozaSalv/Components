import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  InputsScreen({super.key});

  final List<String> _userTypes = ['Admin', 'Superuser', 'User', 'Developer'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registro de usuario'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Completa tus datos',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 16),

            TextFormField(
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                labelText: 'Nombre completo',
                hintText: 'Ej. Juan Pérez',
                prefixIcon: Icon(Icons.person),
              ),
            ),
            const SizedBox(height: 12),

            // Teléfono
            TextFormField(
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                labelText: 'Teléfono',
                prefixIcon: Icon(Icons.phone),
              ),
            ),
            const SizedBox(height: 12),

            TextFormField(
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: 'Correo electrónico',
                hintText: 'ejemplo@dominio.com',
                prefixIcon: Icon(Icons.email),
              ),
            ),
            const SizedBox(height: 12),

            TextFormField(
              textInputAction: TextInputAction.done,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Contraseña',
                hintText: 'Mínimo 6 caracteres',
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            const SizedBox(height: 12),

            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                labelText: 'Tipo de usuario',
                prefixIcon: Icon(Icons.badge),
              ),
              items: _userTypes
                  .map(
                    (type) => DropdownMenuItem(value: type, child: Text(type)),
                  )
                  .toList(),
              onChanged: (v) {},
            ),
            const SizedBox(height: 20),

            SizedBox(
              height: 48,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger(child: Text('Registro Exitoso'));
                },
                child: const Text(
                  'GUARDAR',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
