import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp/UI/screens/theme/theme_provider.dart';

import '../../../../constants/colours.dart';
import '../../theme/colors.dart';

// ignore: must_be_immutable
class CustomCard extends ConsumerWidget {
  String title;
  VoidCallback? onPressed;

  CustomCard({
    Key? key,
    required this.title,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeModeProvider);
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        elevation: 15,
        color: theme == ThemeMode.dark
            ? lightColorScheme.background
            : darkColorScheme.background,
        shadowColor: AppColors.darkBlue,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(6),
            bottomRight: Radius.circular(16),
            bottomLeft: Radius.circular(6),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 60.h,
            width: 80.w,
            child: Center(
                child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: theme == ThemeMode.dark
                    ? darkColorScheme.background
                    : lightColorScheme.background,
                fontSize: 18.sp,
              ),
            )),
          ),
        ),
      ),
    );
  }
}
