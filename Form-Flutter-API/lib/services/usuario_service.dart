import 'dart:convert';

import 'package:practica_5/models/usuario.dart';
import 'package:http/http.dart' as http;

class UsuarioService {
  static const String _url =
      'https://us-central1-sistemapiscicola.cloudfunctions.net/usuarios';

  Future<Map<String, dynamic>> registrarUsuario(Persona usuario) async {
    try {
      final response = await http.post(Uri.parse(_url),
          headers: {'Content-type': 'application/json'},
          body: json.encode({
            'nombre': usuario.nombre,
            'email': usuario.email,
            'telefono': usuario.telefono,
            'password': usuario.password,
          }));
      if (response.statusCode == 201) {
        return json.decode(response.body);
      } else {
        throw Exception('Error al registrar usuario: ${response.body}');
      }
    } catch (e) {
      throw Exception('Error de conexion: $e');
    }
  }
}
