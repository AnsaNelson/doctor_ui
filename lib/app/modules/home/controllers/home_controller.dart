import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final select = ''.obs;
  DateTime selectedDate = DateTime.now();
  
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void selected(String categoryName) {
    select.value = categoryName;
  }

 void booking(String selectedDate, String selectedTime, int count) {
  // Convert the selected date to a format compatible with Firebase path
  String firebaseDate = selectedDate.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '');

  // Reference to the Firebase database
  DatabaseReference ref = FirebaseDatabase.instance.ref('Post');
  // Push the selected date and time to the database under the converted date node
  ref.child(firebaseDate).push().set({
    'date':selectedDate,
    'time': selectedTime,
    'count': count
  }).then((_) {
    print('Booking saved successfully.');
    // You can add navigation logic or other actions here if needed
  }).catchError((error) {
    print('Failed to save booking: $error');
  });
}


}
