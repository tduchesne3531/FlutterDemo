enum CartoonType { Comedy, Drama, Dummy, Horror }

class Cartoon {
  String name = "";
  int duration = 0;
  CartoonType type = CartoonType.Horror;
  String? _test = "";

  Cartoon(
      {required this.name,
      required this.duration,
      this.type = CartoonType.Horror});

  Cartoon.fromJson(Map<String, dynamic> json){
    this.name = json['name'];
    this.duration = json['duration'];
    this.type = json['type'];
  }

  String? get test => _test;

  set test(String? value) {
    _test = value;
  }

  @override
  String toString() {
    return 'Cartoon{name: $name, duraction: $duration, type: $type}';
  }

  set setDuration(int duration) {
    this.duration = duration;
  }

  int get getDuration {
    return duration;
  }
}

void main() {
  Cartoon shrek = Cartoon(name: 'Shrek', duration: 120);
  print(shrek.toString());
  shrek.setDuration = 150;
  
  Cartoon mulan = Cartoon.fromJson({"name": "Mulan", "duration": 100, "type": CartoonType.Comedy});


  print(mulan.toString());

}


