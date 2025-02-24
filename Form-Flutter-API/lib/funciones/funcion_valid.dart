String? validarNombre(String? value) {
  if (value == null || value.isEmpty) {
    return 'El campo es obligatorio';
  }

  if (value.length < 3) {
    return 'El nombre debe tener al menos 3 caracteres';
  }
}

String? ValidarEmail(String? value) {
  if (value == null || value.isEmpty) {
    return 'El campo es obligatorio';
  }

  final epmailRegExp = RegExp(r'^[\w\-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  if (!epmailRegExp.hasMatch(value)) {
    return 'Ingrese un correo valido';
  }
  return null;
}

String? ValidarTelefono(String? value) {
  if (value == null || value.isEmpty) {
    return 'El campo es obligatorio';
  }

  if (value.length != 10) {
    return 'El telefono es incorrecto';
  }
  return null;
}

String? ValidarPassword(String? value) {
  if (value == null || value.isEmpty) {
    return 'La contraseña no puede estar vacia';
  }

  if (value.length < 8) {
    return 'La contraseña debe tener mas de 8 caracteres';
  }

  if (!RegExp(r'[A-Z]').hasMatch(value)) {
    return 'Debe incluir almenos una mayuscula';
  }

  if (!RegExp(r'[0-9]').hasMatch(value)) {
    return 'Debe incluir almenos un numero';
  }

  if (!RegExp(r'[!@#$*-]').hasMatch(value)) {
    return 'Debe incluir almenos un caracter especial';
  }
  return null;
}
