import 'package:flutter/material.dart';
import 'package:weekly_date_picker/weekly_date_picker.dart';

class WeeklyDate extends StatefulWidget {
  const WeeklyDate({Key? key,}) : super(key: key);

  @override
 WeeklyDateState createState() =>WeeklyDateState();
}

class WeeklyDateState extends State<WeeklyDate> {
  DateTime _selectedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
     return Container(
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10)
      ),
       child: WeeklyDatePicker(
         selectedDay: _selectedDay,
         changeDay: (value) => setState(() {
           _selectedDay = value;
         }),
         enableWeeknumberText: false,
         weeknumberColor: const Color(0xFF57AF87),
         weeknumberTextColor: Colors.white,
         backgroundColor: Color.fromARGB(255, 235, 231, 231),
         weekdayTextColor: Color.fromARGB(255, 0, 0, 0),
         digitsColor: const Color.fromARGB(255, 0, 0, 0),
         selectedDigitBackgroundColor: Color.fromARGB(255, 86, 155, 124),
         weekdays: const ["Mo", "Tu", "We", "Th", "Fr"],
         daysInWeek: 5,
       ),
     );
   
  }
}