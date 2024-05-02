import 'package:doctor_ui/app/widgets/botton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/home_controller.dart';
import 'package:doctor_ui/app/widgets/time_slot.dart';
import 'package:doctor_ui/app/widgets/weekly_day.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final HomeController controller =
        Get.put(HomeController()); 
       String token= Get.arguments;
       int bookingcount=0;// Initialize HomeController using Get.put()

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Welcome ",
                    style: GoogleFonts.cormorant(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 48,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0 ,top:10,bottom: 5 ),
                      child: CircleAvatar(
                        backgroundImage:
                            NetworkImage("https://tse2.mm.bing.net/th?id=OIP.Z8steBIhLgujoI6DzaTCKQHaHI&pid=Api&P=0&h=220"),
                        radius: 80,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dr.Priya ",
                            style: GoogleFonts.abhayaLibre(textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.white)),
                          ),
                          Text("MBBS,BDMS"),
                          Text("2 Years Experience"),
                          SizedBox(height: 3,),
                          Row(
                            children: [
                              Icon(Icons.star,color: Colors.yellow,),
                              Icon(Icons.star,color: Colors.yellow,),
                              Icon(Icons.star,color: Colors.yellow,),
                              Icon(Icons.star,color: Colors.yellow,),
                             
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 49,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Booking",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    SizedBox(height: 20),
                    WeeklyDate(),
                    SizedBox(height: 20),
                    Text(
                      "Time Slot",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    SizedBox(height: 20),
                    Obx(() => Row(
                          children: [
                            TimeSlot(
                                categoryName: '10.00 AM',
                                onPressed: (p0) {
                                  controller.selected(p0);
                                },
                                isSelected:
                                    controller.select.value == '10.00 AM'),
                            TimeSlot(
                                categoryName: '2.00 PM',
                                onPressed: (p0) {
                                  controller.selected(p0);
                                },
                                isSelected:
                                    controller.select.value == '2.00 PM'),
                            TimeSlot(
                                categoryName: '6.00 PM',
                                onPressed: (p0) {
                                  controller.selected(p0);
                                },
                                isSelected:
                                    controller.select.value == '6.00 PM')
                          ],
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Button(
                        text: "BOOKING",
                        onClick: () {
                          DateTime selectedDate = controller.selectedDate;
                          String selectedTime = controller.select
                              .value; // Assuming selectedTime is stored as a string in your HomeController
                          controller.booking(
                              selectedDate.toString(), selectedTime,bookingcount);
                        })
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
