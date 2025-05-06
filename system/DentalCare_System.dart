import '../models/patient.dart';
import '../models/Doctor.dart';
import '../models/appointment.dart';

class DentalcareSystem {
  List<Appointment> appointments = [];

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
}

  // bool isAvailable(Doctor doctor, String date, String time) {
  //   for (var appointment in appointments) {
  //     if (appointment.date == date &&
  //         appointment.time == time &&
  //         appointment.doctor == doctor) {
  //       return false;
  //     }
  //   }
  //   return true;
  // }

  // bool bookAppointment(
  //   Patient patient,
  //   Doctor doctor,
  //   String date,
  //   String time,
  // ) {
  //   if (isAvailable(doctor, date, time)) {
  //     Appointment newAppointment = Appointment(
  //       patient: patient,
  //       doctor: doctor,
  //       date: date,
  //       time: time,
  //     );
  //     appointments.add(newAppointment);
  //     print('The appointment has been booked successfully.');
  //     return true;
  //   } else {
  //     print('This appointment is not available');
  //     return false;
  //   }
  // }

  // void ShowAllAppointment() {
  //   if (appointments.isEmpty) {
  //     print("There are no appointments currently");
  //   } else {
  //     for (var appoint in appointments) print(appoint.DisplayAppointmentInfo());
  //   }
  // }
//}
