🦷 Dental Care System - main.dart Overview
This documentation outlines the purpose and structure of the main.dart file in the Dental Care System project. It serves as the entry point and orchestrates the core functionality like appointment scheduling and managing doctor-patient interactions.

📌 Overview
The main.dart file brings together the core components of the Dental Care System. It simulates real-world dental operations by:

Creating doctors and patients.

Booking appointments.

Displaying scheduled appointments.

The goal is to streamline appointment management in a dental clinic context.

🚀 Entry Point: main()
The main() function initializes the system and demonstrates its core features.

Steps Performed:
Instantiates the DentalcareSystem.

Creates three doctors, each with unique names and specialties.

Creates three patients with their names and contact numbers.

Books appointments using bookAppointment().

Displays all appointments via ShowAllAppointment().

Example Usage
dart
Copy
Edit
DentalCare.bookAppointment(patient1, doctor1, "25-5-2025", "5pm");
📦 Imports
The file imports key components needed to operate the system:

dart
Copy
Edit
import 'models/patient.dart';         // Defines Patient class
import 'models/doctor.dart';          // Defines Doctor class
import 'system/DentalCare_System.dart'; // Core system logic
🧩 Key Classes
1. DentalcareSystem
Manages the appointment process.

Likely contains methods:

bookAppointment(Patient, Doctor, date, time)

ShowAllAppointment()

2. Doctor
Represents a doctor with a name and a specialty.

Example:

dart
Copy
Edit
var doctor1 = Doctor(name: "Hosam", specialty: "General Dentistry");
3. Patient
Represents a patient with a name and phone number.

Example:

dart
Copy
Edit
var patient1 = Patient(name: "Ali", phone_num: 0795719299);
✅ Conclusion
The main.dart file is the foundation of the Dental Care System simulation. It links all the components, demonstrating how appointments are booked and managed. This structured approach helps visualize the interactions between patients, doctors, and the system.
