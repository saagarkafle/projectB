import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp/UI/widgets/action_button.dart';
import 'package:whatsapp/UI/widgets/custom_text_field.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // EachTextField(
            //   onChanged: (p0) {
            //     return null;
            //   },
            //   textColor: Colors.black,
            //   contentPadding: const EdgeInsets.all(0),
            //   inputAction: TextInputAction.none,
            //   hintText: 'Enter title',
            //   fillColor: Colors.red,
            //   filled: false,
            //   isDense: false,
            //   btnCurve: 4,
            //   border: false,
            // ),
            // // const SizedBox(height: 16),
            // EachTextField(
            //   onChanged: (p0) {
            //     return null;
            //   },
            //   textColor: Colors.black,
            //   contentPadding: const EdgeInsets.all(0),
            //   inputAction: TextInputAction.none,
            //   hintText: 'Enter subtitle',
            //   fillColor: Colors.red,
            //   filled: false,
            //   isDense: false,
            //   btnCurve: 0,
            //   border: false,
            // ),
            const Text('Title'),
            const SizedBox(height: 6),
            const CustomTextField(
              btnCurve: 4,
              keywordType: TextInputType.text,
              hintText: 'Ttile',
              maxLength: 40,
            ),
            const SizedBox(height: 12),
            const Text('Subtitle'),
            const SizedBox(height: 6),
            const CustomTextField(
              btnCurve: 4,
              keywordType: TextInputType.text,
              hintText: 'Subtitle',
              maxLines: 3,
            ),
            const SizedBox(height: 32),
            ActionButton(
                btnName: 'Send Notification',
                btnCurve: 40.r,
                btnHeight: 48.h,
                txtFontSize: 16.sp,
                btnAction: () {})
          ],
        ),
      ),
    );
  }
}
