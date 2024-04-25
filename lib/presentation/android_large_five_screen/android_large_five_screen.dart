import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/android_large_five_bloc.dart';
import 'models/android_large_five_model.dart';

class AndroidLargeFiveScreen extends StatelessWidget {
  const AndroidLargeFiveScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeFiveBloc>(
      create: (context) => AndroidLargeFiveBloc(AndroidLargeFiveState(
        androidLargeFiveModelObj: AndroidLargeFiveModel(),
      ))
        ..add(AndroidLargeFiveInitialEvent()),
      child: AndroidLargeFiveScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AndroidLargeFiveBloc, AndroidLargeFiveState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 36.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildRowDayCounter(context),
                  SizedBox(height: 19.v),
                  Padding(
                    padding: EdgeInsets.only(left: 18.h),
                    child: Text(
                      "lbl_day_2".tr,
                      style: theme.textTheme.headlineSmall,
                    ),
                  ),
                  SizedBox(height: 35.v),
                  Padding(
                    padding: EdgeInsets.only(left: 18.h),
                    child: Text(
                      "lbl_day_3".tr,
                      style: theme.textTheme.headlineSmall,
                    ),
                  ),
                  SizedBox(height: 28.v),
                  Padding(
                    padding: EdgeInsets.only(left: 18.h),
                    child: Text(
                      "lbl_day_4".tr,
                      style: theme.textTheme.headlineSmall,
                    ),
                  ),
                  CustomElevatedButton(
                    width: 196.h,
                    text: "lbl_start_day_2".tr,
                    alignment: Alignment.center,
                  ),
                  SizedBox(height: 8.v),
                  Padding(
                    padding: EdgeInsets.only(left: 18.h),
                    child: Text(
                      "lbl_day_5".tr,
                      style: theme.textTheme.headlineSmall,
                    ),
                  ),
                  SizedBox(height: 22.v),
                  Padding(
                    padding: EdgeInsets.only(left: 18.h),
                    child: Text(
                      "lbl_day_6".tr,
                      style: theme.textTheme.headlineSmall,
                    ),
                  ),
                  SizedBox(height: 31.v),
                  Padding(
                    padding: EdgeInsets.only(left: 22.h),
                    child: Text(
                      "lbl_day_7".tr,
                      style: theme.textTheme.headlineSmall,
                    ),
                  ),
                  SizedBox(height: 5.v)
                ],
              ),
            ),
            bottomNavigationBar: _buildRowMegaphone(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 38.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 8.h,
          top: 13.v,
          bottom: 12.v,
        ),
      ),
      title: AppbarTitle(
        text: "lbl_white_belt".tr,
        margin: EdgeInsets.only(left: 13.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowDayCounter(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 18.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 10.v),
              child: Text(
                "lbl_day_1".tr,
                style: theme.textTheme.headlineSmall,
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgCheckmark,
              height: 30.v,
              width: 40.h,
              margin: EdgeInsets.only(top: 9.v),
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowMegaphone(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 29.h,
        right: 22.h,
        bottom: 34.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgMegaphone,
            height: 40.adaptSize,
            width: 40.adaptSize,
            margin: EdgeInsets.only(top: 5.v),
          ),
          Spacer(
            flex: 46,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgHome,
            height: 43.v,
            width: 40.h,
          ),
          Spacer(
            flex: 53,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRefresh,
            height: 32.v,
            width: 34.h,
            margin: EdgeInsets.only(
              top: 7.v,
              bottom: 6.v,
            ),
          )
        ],
      ),
    );
  }
}
