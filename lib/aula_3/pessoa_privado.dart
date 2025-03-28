class Pessoa {
  String _nome;
  double _peso;

  String get nome => _nome;
   
  void set nome(String nome) => _nome = nome;

  double get peso{
  return _peso;
  }
  void set peso(double peso) {
    _peso = peso;
  }

  Pessoa(String nome, double peso)
      : _nome = nome,
        _peso = peso;
}
