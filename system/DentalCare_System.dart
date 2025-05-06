import '../models/patient.dart';
import '../models/Doctor.dart';
import '../models/appointment.dart';

class DentalcareSystem {
  List<Appointment> appointments = [];
  List<Doctor> doctors = [];
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

  void showAllDoctors() {
    if (doctors.isEmpty) {
      print("There are no doctors currently");
    } else {
      print("List of Doctors:");
      for (var doctor in doctors) {
        print("Dr.${doctor.name} and the specialty ${doctor.specialty}");
      }
    }
  }

  void addDoctor(Doctor doctor) {
    doctors.add(doctor);
  }
}
