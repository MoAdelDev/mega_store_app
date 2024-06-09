import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store_app/core/helpers/extensions.dart';

class CustomOutlinedButton extends StatefulWidget {
  final VoidCallback onPressed;
  final Widget child;
  const CustomOutlinedButton({
    super.key,
    required this.onPressed,
    required this.child,
  });

  @override
  State<CustomOutlinedButton> createState() => _CustomOutlinedButtonState();
}

class _CustomOutlinedButtonState extends State<CustomOutlinedButton> {
  bool isTapped = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55.h,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: context.colorScheme.outline,
        ),
      ),
      child: MaterialButton(
        onPressed: () async {
          FocusManager.instance.primaryFocus?.unfocus();
          if (!isTapped) {
            setState(() {
              isTapped = true;
            });
            widget.onPressed();
            await Future.delayed(const Duration(milliseconds: 200));
            setState(() {
              isTapped = false;
            });
          }
        },
        splashColor: Colors.transparent,
        colorBrightness: Brightness.light,
        child: widget.child,
      ),
    );
  }
}
