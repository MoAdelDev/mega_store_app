import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store_app/core/helpers/extensions.dart';
import 'package:mega_store_app/core/helpers/spacing.dart';
import 'package:mega_store_app/core/style/font_weight_helper.dart';
import 'package:mega_store_app/core/widgets/custom_button.dart';
import 'package:mega_store_app/core/widgets/custom_text.dart';
import 'package:mega_store_app/core/widgets/custom_text_field.dart';

class WriteReviewScreen extends StatefulWidget {
  const WriteReviewScreen({super.key});

  @override
  State<WriteReviewScreen> createState() => _WriteReviewScreenState();
}

class _WriteReviewScreenState extends State<WriteReviewScreen> {
  int rating = 0;
  final TextEditingController reviewController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Write Review',
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(
                    vertical: 10.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        'Please write Overall level of satisfaction with your shipping / Delivery Service',
                        style: context.textTheme.labelMedium,
                        fontWeight: FontWeightHelper.bold,
                        color: const Color(0xff223263),
                      ),
                      verticalSpace(10),
                      Row(
                        children: [
                          ...List.generate(
                            5,
                            (index) => GestureDetector(
                              onTap: () {
                                setState(() {
                                  rating = index + 1;
                                });
                              },
                              child: Icon(
                                Icons.star,
                                color: index < rating
                                    ? const Color(0xffF2994A)
                                    : const Color(0xffEBF0FF),
                                size: 33,
                              ),
                            ),
                          ),
                          horizontalSpace(8),
                          CustomText(
                            '$rating/5',
                            style: context.textTheme.labelMedium,
                            fontWeight: FontWeightHelper.bold,
                            color: context.colorScheme.tertiary,
                          ),
                        ],
                      ),
                      verticalSpace(10),
                      CustomText(
                        'Please write a review',
                        style: context.textTheme.labelMedium,
                        fontWeight: FontWeightHelper.bold,
                        color: const Color(0xff223263),
                      ),
                      verticalSpace(10),
                      CustomTextField(
                        maxLines: 5,
                        controller: reviewController,
                        keyboardType: TextInputType.text,
                        onSubmit: (value) {},
                        hintText: 'Write your review here',
                        errorMsg: 'Please write your review',
                        textInputAction: TextInputAction.done,
                      ),
                    ],
                  ),
                ),
              ),
              verticalSpace(10),
              CustomButton(
                onPressed: () {
                  if (reviewController.text.isEmpty || rating == 0) {
                    final snackBar = SnackBar(
                      content: CustomText(
                        'Please write your review and rate it',
                        style: context.textTheme.labelMedium,
                        color: context.colorScheme.onPrimary,
                      ),
                      backgroundColor: context.colorScheme.error,
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    return;
                  }
                  context.pop();
                },
                label: 'Send Review',
                backgroundColor: context.colorScheme.secondary,
              )
            ],
          ),
        ),
      ),
    );
  }
}
