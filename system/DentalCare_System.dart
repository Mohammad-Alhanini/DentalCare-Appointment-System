import '../models/patient.dart';
import '../models/Doctor.dart';
import '../models/appointment.dart';

class DentalcareSystem {
  List<Appointment> appointments = [];
  List<Doctor> _doctor = [];
  void bookAppointment(
    Patient patient,
    Doctor doctor,
    String date,
    String time,
  ) {
    for (var appoint in appointments) {
      if (appoint.date == date &&
          appoint.time == time &&
          appoint.doctor == doctor) {
        print("This appointment is not available");
        appoint.DisplayAppointmentInfo();
        return;
      }
    }

    Appointment newAppointment = Appointment(
      patient: patient,
      doctor: doctor,
      date: date,
      time: time,
    );

    appointments.add(newAppointment);
    newAppointment.DisplayAppointmentInfo();
  }

  void ShowAllAppointment() {
    if (appointments.isEmpty) {
      print("There are no appointments currently");
    } else {
      for (var appoint in appointments) print(appoint.DisplayAppointmentInfo());
    }
  }

  void ShowAllDoctors() {
    for (var doctor in _doctor) {
      print("Dr.${doctor.name}");
    }
  }
}
