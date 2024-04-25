import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/android_large_one_bloc.dart';
import 'models/android_large_one_model.dart';

class AndroidLargeOneScreen extends StatelessWidget {
  const AndroidLargeOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeOneBloc>(
      create: (context) => AndroidLargeOneBloc(AndroidLargeOneState(
        androidLargeOneModelObj: AndroidLargeOneModel(),
      ))
        ..add(AndroidLargeOneInitialEvent()),
      child: AndroidLargeOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AndroidLargeOneBloc, AndroidLargeOneState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 23.h,
                vertical: 33.v,
              ),
              child: Column(
                children: [
                  SizedBox(height: 81.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgIstockphoto452512679612x612,
                    height: 292.v,
                    width: 290.h,
                  ),
                  SizedBox(height: 21.v),
                  SizedBox(
                    width: 139.h,
                    child: Text(
                      "msg_taekwando_workout2".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.headlineSmallIrishGrover,
                    ),
                  ),
                  SizedBox(height: 42.v),
                  CustomElevatedButton(
                    height: 68.v,
                    width: 212.h,
                    text: "lbl_get_started".tr,
                    buttonTextStyle: CustomTextStyles.headlineSmallJejuHallasan,
                  ),
                  Spacer(),
                  _buildRowFacebookOne(context)
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildRowFacebookOne(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(right: 22.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgFacebookPrimarycontainer,
              height: 46.v,
              width: 64.h,
              margin: EdgeInsets.only(
                top: 3.v,
                bottom: 6.v,
              ),
            ),
            Spacer(
              flex: 58,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgTrash,
              height: 52.v,
              width: 65.h,
              margin: EdgeInsets.only(top: 3.v),
            ),
            Spacer(
              flex: 41,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgVector,
              height: 50.v,
              width: 64.h,
              margin: EdgeInsets.only(bottom: 5.v),
            )
          ],
        ),
      ),
    );
  }
}
