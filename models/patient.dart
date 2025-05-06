class Patient {
  String name;
  int phone_num;

  Patient({required this.name, required this.phone_num});

  void DIsplayPatientInfo() {
    print("The patient name $name");
    print("The patient phone number $phone_num");
    print("_____________________________");
  }
}
