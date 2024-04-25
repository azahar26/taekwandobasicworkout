import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/android_large_three_bloc.dart';
import 'models/android_large_three_model.dart';

class AndroidLargeThreeScreen extends StatelessWidget {
  const AndroidLargeThreeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeThreeBloc>(
      create: (context) => AndroidLargeThreeBloc(AndroidLargeThreeState(
        androidLargeThreeModelObj: AndroidLargeThreeModel(),
      ))
        ..add(AndroidLargeThreeInitialEvent()),
      child: AndroidLargeThreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AndroidLargeThreeBloc, AndroidLargeThreeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.whiteA700.withOpacity(0.8),
            appBar: _buildAppbar(context),
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 14.h,
                vertical: 28.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 18.v),
                  Padding(
                    padding: EdgeInsets.only(right: 6.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 551.v,
                          width: 262.h,
                          child: Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgGroupOnprimarycontainer,
                                height: 185.v,
                                width: 195.h,
                                alignment: Alignment.centerRight,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: SizedBox(
                                  width: 212.h,
                                  child: Text(
                                    "msg_white_belt_yellow".tr,
                                    maxLines: 19,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles
                                        .headlineSmallIrishGrover,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgCheckmark,
                          height: 30.v,
                          width: 40.h,
                          margin: EdgeInsets.only(
                            left: 22.h,
                            bottom: 521.v,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 58.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 18.h,
                      right: 96.h,
                    ),
                    child: Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgHome,
                          height: 35.v,
                          width: 40.h,
                        ),
                        Spacer(
                          flex: 36,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgLaptop,
                          height: 36.v,
                          width: 30.h,
                        ),
                        Spacer(
                          flex: 63,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgCalendar,
                          height: 37.v,
                          width: 30.h,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMegaphone,
        margin: EdgeInsets.only(
          left: 18.h,
          top: 8.v,
          bottom: 12.v,
        ),
      ),
      title: AppbarTitle(
        text: "lbl_discover".tr,
        margin: EdgeInsets.only(left: 15.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgRewind,
          margin: EdgeInsets.fromLTRB(19.h, 12.v, 19.h, 8.v),
        )
      ],
    );
  }
}
