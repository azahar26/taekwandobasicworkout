import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/android_large_four_bloc.dart';
import 'models/android_large_four_model.dart';

class AndroidLargeFourScreen extends StatelessWidget {
  const AndroidLargeFourScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeFourBloc>(
      create: (context) => AndroidLargeFourBloc(AndroidLargeFourState(
        androidLargeFourModelObj: AndroidLargeFourModel(),
      ))
        ..add(AndroidLargeFourInitialEvent()),
      child: AndroidLargeFourScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AndroidLargeFourBloc, AndroidLargeFourState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: theme.colorScheme.primary,
            appBar: _buildAppBar(context),
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 7.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 24.h),
                    child: Text(
                      "lbl_this_week".tr,
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                  SizedBox(height: 12.v),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "lbl_00_00_00".tr,
                      style: theme.textTheme.headlineSmall,
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 39.h,
                      right: 68.h,
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 96.h,
                          margin: EdgeInsets.only(top: 2.v),
                          child: Text(
                            "lbl_0_workout".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                        Container(
                          width: 36.h,
                          margin: EdgeInsets.only(left: 121.h),
                          child: Text(
                            "lbl_0_cal".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.titleLarge,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 18.v),
                  _buildStackPrice(context),
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
      leadingWidth: 43.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(
          left: 17.h,
          top: 14.v,
          bottom: 19.v,
        ),
        onTap: () {
          onTapArrowleftone(context);
        },
      ),
      title: AppbarTitle(
        text: "msg_taekwando_workout".tr,
        margin: EdgeInsets.only(left: 15.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgSettings,
          margin: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 11.v,
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildStackPrice(BuildContext context) {
    return SizedBox(
      height: 289.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10.h,
                vertical: 4.v,
              ),
              decoration: AppDecoration.fillWhiteA,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "lbl_week_goal".tr,
                          style: theme.textTheme.titleLarge,
                        ),
                        Text(
                          "lbl_0_5".tr,
                          style: theme.textTheme.titleLarge,
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 9.v),
                  Text(
                    "msg_mon_tue_wed_thu".tr,
                    style: CustomTextStyles.titleLargeIrishGrover,
                  ),
                  SizedBox(height: 10.v),
                  Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 30.v,
                          width: 37.h,
                          margin: EdgeInsets.only(top: 2.v),
                          decoration: BoxDecoration(
                            color: appTheme.black900,
                            borderRadius: BorderRadius.circular(
                              18.h,
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgPlay,
                          height: 30.v,
                          width: 37.h,
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 42.v)
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgGroup,
            height: 185.v,
            width: 195.h,
            alignment: Alignment.bottomCenter,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 30.v,
              width: 37.h,
              margin: EdgeInsets.only(
                left: 68.h,
                top: 77.v,
              ),
              decoration: BoxDecoration(
                color: appTheme.black900,
                borderRadius: BorderRadius.circular(
                  18.h,
                ),
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgPlay,
            height: 30.v,
            width: 37.h,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(
              left: 116.h,
              top: 77.v,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgPlay,
            height: 30.v,
            width: 37.h,
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(top: 77.v),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgPlay,
            height: 30.v,
            width: 37.h,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(
              top: 77.v,
              right: 107.h,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgPlay,
            height: 30.v,
            width: 37.h,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(
              top: 75.v,
              right: 61.h,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowMegaphone(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 24.h,
        right: 21.h,
        bottom: 26.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgMegaphone,
            height: 39.adaptSize,
            width: 39.adaptSize,
          ),
          Spacer(
            flex: 47,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgHome,
            height: 43.v,
            width: 40.h,
          ),
          Spacer(
            flex: 52,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRefresh,
            height: 32.v,
            width: 34.h,
            margin: EdgeInsets.only(
              top: 5.v,
              bottom: 6.v,
            ),
          )
        ],
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }
}
