// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class TimeSlot extends StatefulWidget {
//   final String text;
//   final int index;
//   final int selectedIndex;
//  final bool isSelected;
//   final Function(int) onSelect;

//   const TimeSlot({
//     Key? key,
//     required this.text,
//     required this.index,
//     required this.selectedIndex,
//     required this.isSelected,
//     required this.onSelect,
//   }) : super(key: key);

//   @override
//   TimeSlotState createState() => TimeSlotState();
// }

// class TimeSlotState extends State<TimeSlot> {
//   @override
//   Widget build(BuildContext context) {
    
//     return Padding(
//       padding: const EdgeInsets.only(left: 10),
//       child: GestureDetector(
//         onTap: () {
//           setState(() {
//   widget.index == widget.selectedIndex;
// });
//         },

//         child: Container(
//           width: 100,
//           height: 50,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10),
//             color: widget.isSelected ? Colors.green : Colors.grey,
//           ),
//           child: Center(
//             child: Text(
//               widget.text,
//               style: GoogleFonts.prata(
//                 textStyle: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 20,
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TimeSlot extends StatelessWidget {
  final String categoryName;
  final bool isSelected;
  final Function(String) onPressed;

  TimeSlot(
      {required this.categoryName,
      required this.onPressed,
      required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: GestureDetector(
        onTap: () {
          onPressed(categoryName);
        },
        child: Container(
         width: 100,
         height: 50,
          decoration: BoxDecoration(
            color: isSelected ? Colors.green : const Color.fromARGB(255, 231, 238, 243),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  categoryName,
                  style: GoogleFonts.prata(textStyle: TextStyle(
                    color: isSelected ? Colors.white : Colors.black,
                  )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
