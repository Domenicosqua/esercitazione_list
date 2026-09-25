//* le collection possono essere list, set e map
// list: comprende una lista ordinata di elementi
// set: è una collezione non ordinata di elementi unici, non consente di avere duplicati
// map: collezione di coppie chiave valore, chiave unica a cui viene associato un valore

void main(List<String> arguments) {
  //! LEZIONE
  //* dichiarazione e inizializzazione di una lista di stringhe

  List<String> libri = ['1984', 'Lord of the ring', 'fight club'];
  print(libri);
  print(libri[2]);

  var film = [
    'matrix',
    'interstellar',
    'inception',
  ]; // dart inferisce automaticamente il tipo

  //* operazioni sulle liste

  List<String> videogiochi = [
    'super mario',
    'super mario bros',
    'super mario cart',
    'call of duty',
    'f25',
  ];
  // metodo add
  videogiochi.add('halo');
  // metodo remove
  videogiochi.remove('call of duty');
  // metodi di filtraggio e modifica
  var vgMario = videogiochi.where((vg) => vg.contains('mario')).toList();
  print(videogiochi);
  print(vgMario);

  //* set
  // unicità, non ordinato, efficiente nelle operazioni di ricerca
  Set<String> movies = {'matrix', 'kingsman', '1917'};
  print('film disponibili nella set:');
  print(movies);

  var vgs = <String>{};
  vgs.add('mincraft');
  vgs.add('fallout');
  vgs.add('mincraft');
  vgs.remove('fallout');
  print(vgs);

  //* map

  Map<String, String> libri3 = {
    'Jr Tolkien': 'Il signore degli anelli',
    'Orwell': 'La fattoria degli animali',
  };

  print(libri3);
  // libri3.forEach((autore, titolo) => print('Autore: $autore, Titolo: $titolo'));

  //! ESERCITAZIONE
  List<String> libriEsercitazione = [
    'Delitto e Castigo',
    'L\'idiota',
    'Cime Tempestose',
    'I fiori del male',
  ];
  print(libriEsercitazione);
  print(libriEsercitazione[1]);
  libriEsercitazione.add('Capitani coraggiosi');
  libriEsercitazione.remove('Cime Tempestose');

  List<String> filtroCoraggiosi = libriEsercitazione
      .where((vg) => vg.contains('coraggiosi'))
      .toList();
  print(filtroCoraggiosi);

  //! esercitazione map

  Map<String, String> libri4 = {
    'London': 'Zanna bianca',
    'Stevenson': 'L\' isola del tesoro',
    'Salgari': 'Le tigri di Mompracem',
  };
  print(libri4);

  libri4.forEach((autore, titolo) => print('Autore: $autore, Titolo: $titolo'));

  libri4["Orwell"] = "1984";
  //libri4.addAll({'Orwell': '1984'});
  libri4['London'] = 'il richiamo della foresta';
  print(libri4);
  if (libri4.containsKey('Orwell')) {
    print('Autore Presente');
  } else {
    print('autore non presente');
  }
  if (libri4.containsValue('1984')) {
    print('Libro presente');
  } else {
    print('libro non presente in archivio');
  }
}
