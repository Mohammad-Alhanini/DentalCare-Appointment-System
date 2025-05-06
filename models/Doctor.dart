class Doctor {
  String name;
  String specialty;
  List availability = [];

  Doctor({required this.name, required this.specialty});

  void DisplayDoctorsInfo() {
    print("the doctor name $name and the specialty is $specialty");
    print("_____________________________");
  }
}
