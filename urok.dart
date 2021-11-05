void main() {
  var ekvador = Country('Экваторияальный', 'Эквадор');
  ekvador.infoCountry();

  var mustang = Car('black', 'Ford', 500, 50000);
  mustang.infoCar();

  var erjan = Student('Erjan', 'Esengeldiev', 2020);
  erjan.getFullName();
  erjan.getCourse();
}

class Country {
  String? climet;
  String? place;

  Country(climet, place) {
    this.climet = climet;
    this.place = place;
  }

  void infoCountry() {
    print('Место:$place,\nклимат:$climet');
  }
}

class Car {
  String? color;
  int? horsePawer;
  String? name;
  int? price;

  Car(this.color, this.name, this.horsePawer, this.price) {}

  void infoCar() {
    print(
        '\n\nCar Name-$name\:\nColor-$color\,\nHorsepawer-$horsePawer\,\nPrice-$price\$');
  }
}

class User {
  String? name;
  String? sername;
  User(this.name, this.sername);
}

class Student extends User {
  int? yersoftakeing;
  Student(String name, String sername, this.yersoftakeing)
      : super(name, sername);

  void getFullName() {
    print('\nname-$name, sername-$sername');
  }

  void getCourse() {
    int course = DateTime.now().year - yersoftakeing!;
    if (course > 5) {
      course = 5;
    }
    print('$course-course');
  }
}
