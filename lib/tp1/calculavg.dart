class Matiere {
  String name = "";
  List<double> notes = [];

  Matiere({required this.name, required this.notes});
}

void getAverage(List<Matiere> matieres) {
  double sommeTotale = 0;
  int nombreDeNotes = 0;

  for (Matiere matiere in matieres) {
    double somme = 0;
    for (double note in matiere.notes) {
      somme += note;
    }
    double moyenne = somme / matiere.notes.length;
    print(
        "La matière en ${matiere.name} est de : ${moyenne.toStringAsFixed(2)}");

    // Pour la moyenne globale
    sommeTotale += somme;
    nombreDeNotes += matiere.notes.length;
  }

  double moyenneTotale = sommeTotale / nombreDeNotes;
  print("Moyenne générale : ${moyenneTotale.toStringAsFixed(2)}");
}

void main() {
  List<Matiere> matieres = [
    Matiere(name: "Informatique", notes: [15, 18, 20, 20, 16, 0]),
    Matiere(name: "Français", notes: [5, 8, 0, 0, 16, 10]),
    Matiere(name: "Maths", notes: [15, 18, 20, 20, 16, 10]),
  ];

  getAverage(matieres);
}
