import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'bloc/android_large_two_bloc.dart';
import 'models/android_large_two_model.dart';

class AndroidLargeTwoScreen extends StatelessWidget {
  const AndroidLargeTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeTwoBloc>(
      create: (context) => AndroidLargeTwoBloc(AndroidLargeTwoState(
        androidLargeTwoModelObj: AndroidLargeTwoModel(),
      ))
        ..add(AndroidLargeTwoInitialEvent()),
      child: AndroidLargeTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AndroidLargeTwoBloc, AndroidLargeTwoState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
              width: SizeUtils.width,
              height: SizeUtils.height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.5, 0),
                  end: Alignment(0.5, 1),
                  colors: [
                    theme.colorScheme.errorContainer,
                    theme.colorScheme.primary.withOpacity(0.8)
                  ],
                ),
              ),
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 13.h,
                  vertical: 29.v,
                ),
                child: Column(
                  children: [
                    _buildLanguageRow(context),
                    Spacer(
                      flex: 19,
                    ),
                    _buildEnglishColumn(context),
                    Spacer(
                      flex: 80,
                    )
                  ],
                ),
              ),
            ),
            bottomNavigationBar: _buildMegaphoneRow(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildLanguageRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 5.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 2.v),
            child: Text(
              "lbl_language".tr,
              style: theme.textTheme.headlineSmall,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCheckmark,
            height: 30.adaptSize,
            width: 30.adaptSize,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEnglishColumn(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 11.h,
        right: 17.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_english".tr,
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 8.v),
              Text(
                "lbl_spanish".tr,
                style: theme.textTheme.headlineSmall,
              ),
              Text(
                "lbl_arabic".tr,
                style: theme.textTheme.headlineSmall,
              )
            ],
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCheckmark,
            height: 30.adaptSize,
            width: 30.adaptSize,
            margin: EdgeInsets.only(bottom: 61.v),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMegaphoneRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 26.h,
        right: 33.h,
        bottom: 20.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgMegaphone,
            height: 38.v,
            width: 39.h,
            margin: EdgeInsets.only(
              top: 2.v,
              bottom: 3.v,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgHome,
            height: 43.v,
            width: 40.h,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRefresh,
            height: 31.v,
            width: 33.h,
            margin: EdgeInsets.only(
              top: 2.v,
              bottom: 10.v,
            ),
          )
        ],
      ),
    );
  }
}
