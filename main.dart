import 'models/patient.dart';
import 'models/Doctor.dart';
import 'system/DentalCare_System.dart';

void main() {
  var DentalCare = DentalcareSystem();

  var Doctor1 = Doctor(name: "Hosam", specialty: "General Dentistry");
  var Doctor2 = Doctor(name: "Mohammad", specialty: "Endodontics");
  var Doctor3 = Doctor(name: "Abd Alraheem", specialty: "Orthodontics");
  DentalCare.addDoctor(Doctor1);
  DentalCare.addDoctor(Doctor2);
  DentalCare.addDoctor(Doctor3);

  var patient1 = Patient(name: "Ali", phone_num: 0795719299);
  var patient2 = Patient(name: "omar", phone_num: 0795789599);
  var patient3 = Patient(name: "othman", phone_num: 0795556412);

  DentalCare.bookAppointment(patient1, Doctor1, "25-5-2025", "5pm");
  DentalCare.bookAppointment(patient2, Doctor3, "25-5-2025", "5pm");
  DentalCare.bookAppointment(patient3, Doctor2, "28-5-2025", "3pm");

  DentalCare.ShowAllAppointment();

  DentalCare.showAllDoctors();
}
