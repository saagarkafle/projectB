import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/colours.dart';
import '../widgets/action_button.dart';

final counterStateProvider = StateProvider<int>((ref) {
  return 0;
});

class Counter extends ConsumerWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterStateProvider);
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        title: const Text('Counter...'),
        elevation: 2,
        titleSpacing: 10,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Value: $counter',
            style: const TextStyle(fontSize: 24),
          ),
          GestureDetector(
            onTap: () => ref.read(counterStateProvider.notifier).state++,
            child: SizedBox(
                child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: ActionButton(
                  btnName: 'Click me',
                  btnCurve: 0.r,
                  btnHeight: 200.h,
                  txtFontSize: 50.sp,
                  btnAction: () =>
                      ref.read(counterStateProvider.notifier).state++),
            )),
          ),
          GestureDetector(
            onTap: () => ref.read(counterStateProvider.notifier).state--,
            child: SizedBox(
                child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: ActionButton(
                  btnName: 'Click me',
                  btnCurve: 0.r,
                  btnHeight: 200.h,
                  txtFontSize: 50.sp,
                  btnAction: () =>
                      ref.read(counterStateProvider.notifier).state--),
            )),
          ),
        ],
      ),
    );
  }
}
