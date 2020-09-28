import 'dart:io';

class Input {
  /*
   * #2. Controlar que el byte leido es una letra.
   * Sino, devolver un caracter que luego se procese,
   * para no ser tratado como una letra valida.
   * Por ejemplo, en isNewLetterInList que devuelva falso.
   */

  //Julen

  static String readLetter() {
    stdin.echoMode = false;
    stdin.lineMode = false;
    stdout.write("Letra: ");
    int c = stdin.readByteSync(); // 10=Enter, 27=Esc
    String s = String.fromCharCode(c);
    if(esLetra(s) == false) {
      s = "?";
    }
  }

  // @jotanovazq

  static bool esLetra(){
    int l = letra.codeUnitAt("0");

    if (((l > 90) && (l < 97)) || (l < 65) || (l > 122)) {
      return false;
    }
    return true;
  }
}
