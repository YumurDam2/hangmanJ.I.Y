import 'dart:math';

class Dictionary {
  /*
   * #1. Se puede tener:
   * (1) una lista de palabras fija
   * (2) un fichero de texto con las palabras
   *     p.ej. descargado de https://random-word-api.herokuapp.com/all
   * (3) acceso a un service REST que devuelva una palabra aleatoria
   *     p.ej. https://random-word-api.herokuapp.com/word
   * La palabra devuelta debe ser aleatoria.
   */
  String makeRandomWord() {
    List<String> palabrasDiccionario = [
      "astronomia",
      "mineria",
      "naranja",
      "papaya",
      "higo",
      "auriculares",
      "dokker",
      "mercurio"
    ];
    Random random = new Random();
    int aleatorio = random.nextInt(palabrasDiccionario.length);
    return palabrasDiccionario[aleatorio].toString();
  }
}
