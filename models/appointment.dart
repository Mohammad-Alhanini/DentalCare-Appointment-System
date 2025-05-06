import 'Doctor.dart';
import 'patient.dart';

class Appointment {
  Patient patient;
  Doctor doctor;
  String date;
  String time;

  Appointment({
    required this.patient,
    required this.doctor,
    required this.date,
    required this.time,
  });

  String DisplayAppointmentInfo() {
    return "The patient ${patient.name} has an appointment with the doctor ${doctor.name} on the date ${date} at ${time} o'clock";
  }
}
