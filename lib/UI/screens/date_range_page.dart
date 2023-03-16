// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// import '../../constants/colours.dart';

// class DateRangePage extends StatefulWidget {
//   const DateRangePage({super.key});

//   @override
//   State<DateRangePage> createState() => _DateRangePageState();
// }

// class _DateRangePageState extends State<DateRangePage> {
//   DateTimeRange selectedDates =
//       DateTimeRange(start: DateTime.now(), end: DateTime.now());
//   DateTimeRange? _selectedDateRange;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.bgGreyColor,
//       appBar: AppBar(
//         title: const Text('Date range'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
//         child: Column(
//           // mainAxisAlignment: MainAxisAlignment.center,

//           children: [
//             Text('${selectedDates.duration.inDays}'),
//             Text(
//               "Start date: ${_selectedDateRange?.start.toString().split(' ')[0]}",
//               style: const TextStyle(fontSize: 24, color: Colors.blue),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             // End date
//             Text(
//                 "End date: ${_selectedDateRange?.end.toString().split(' ')[0]}",
//                 style: const TextStyle(fontSize: 24, color: Colors.red)),
//             ElevatedButton(
//                 onPressed: () async {
//                   final DateTimeRange? dateTimeRange =
//                       await showDateRangePicker(
//                           context: context,
//                           saveText: 'Done',
//                           firstDate: DateTime(2020),
//                           confirmText: 'line ho ta ',
//                           anchorPoint: const Offset(5, 500),
//                           cancelText: 'sasas',
//                           currentDate: DateTime.now(),
//                           // initialEntryMode: DatePickerEntryMode.calendarOnly,
//                           lastDate: DateTime.now());
//                   if (dateTimeRange != null) {
//                     setState(() {
//                       selectedDates = dateTimeRange;
//                     });
//                   }
//                 },
//                 child: const Text('Choose data'))
//           ],
//         ),
//       ),
//     );
//   }
// }
// main.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp/constants/colours.dart';

class DateRangePicked extends StatefulWidget {
  const DateRangePicked({Key? key}) : super(key: key);

  @override
  State<DateRangePicked> createState() => _DateRangePickedState();
}

class _DateRangePickedState extends State<DateRangePicked> {
  DateTimeRange? _selectedDateRange;

  void _show() async {
    final DateTimeRange? result = await showDateRangePicker(
      context: context,
      firstDate: DateTime(2022),
      lastDate: DateTime.now(),
      currentDate: DateTime.now(),
      saveText: 'Done',
    );

    if (result != null) {
      setState(() {
        _selectedDateRange = result;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Date range picker')),
      body: _selectedDateRange == null
          ? const Center(
              child: Text('Press the button to show the picker'),
            )
          : Padding(
              padding: EdgeInsets.all(30.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Start date: ${_selectedDateRange?.start.toString().split(' ')[0]}",
                    style:
                        TextStyle(fontSize: 24.sp, color: AppColors.greenColor),
                  ),
                  SizedBox(height: 20.h),
                  Text(
                      "End date: ${_selectedDateRange?.end.toString().split(' ')[0]}",
                      style: TextStyle(
                          fontSize: 24.sp, color: AppColors.orangeColor))
                ],
              ),
            ),
      // This button is used to show the date range picker
      floatingActionButton: FloatingActionButton(
        onPressed: _show,
        child: const Icon(Icons.date_range),
      ),
    );
  }
}
