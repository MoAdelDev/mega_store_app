import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mega_store_app/core/helpers/extensions.dart';
import 'package:mega_store_app/core/helpers/spacing.dart';
import 'package:mega_store_app/core/style/font_weight_helper.dart';
import 'package:mega_store_app/core/widgets/custom_outlined_button.dart';
import 'package:mega_store_app/core/widgets/custom_text.dart';

class LoginWithThirdyParty extends StatelessWidget {
  const LoginWithThirdyParty({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomOutlinedButton(
          onPressed: () {},
          child: Row(
            children: [
              SvgPicture.asset(
                'assets/svgs/google.svg',
                width: 20.w,
                height: 20.h,
              ),
              Expanded(
                child: Center(
                  child: CustomText(
                    'Login with Google',
                    style: context.textTheme.labelMedium,
                    fontWeight: FontWeightHelper.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        verticalSpace(8),
        CustomOutlinedButton(
          onPressed: () {},
          child: Row(
            children: [
              SvgPicture.asset(
                'assets/svgs/facebook.svg',
                width: 20.w,
                height: 20.h,
              ),
              Expanded(
                child: Center(
                  child: CustomText(
                    'Login with Facebook',
                    style: context.textTheme.labelMedium,
                    fontWeight: FontWeightHelper.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
