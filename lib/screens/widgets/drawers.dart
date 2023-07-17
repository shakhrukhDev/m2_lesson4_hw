import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:m2_lesson7_hw/utils/app_colors.dart';
import 'package:m2_lesson7_hw/utils/app_icons.dart';
import 'package:m2_lesson7_hw/utils/app_images.dart';
import 'package:m2_lesson7_hw/utils/app_string.dart';

class Drawers extends StatelessWidget {
  const Drawers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        DrawerHeader(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Stack(
                        alignment: AlignmentDirectional.center,
                        children: <Widget>[
                          Image.asset(AppImages.ellips),
                          SvgPicture.asset(AppIcons.menuDrawerIcon)
                        ]),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      SizedBox(
                          height: 45,
                          width: 45,
                          child: Image.asset(AppImages.user)),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            AppString.hemendra,
                            style: TextStyle(
                              color: AppColors.C_1D1E20,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Row(
                            children: [
                              Text(AppString.verifiedProfile),
                              SizedBox(
                                width: 5,
                              ),
                              SvgPicture.asset(AppIcons.starIcon),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 40,
                        width: 66,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColors.C_F5F5F5.withOpacity(0.4),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            AppString.order,
                            style: TextStyle(
                              color: AppColors.C_8F959E,
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
        ),
        ListTile(
          leading: SvgPicture.asset(AppIcons.infoCircleIcon),
          title: const Text(
            AppString.accountInfo,
            style: TextStyle(
                color: AppColors.C_1D1E20,
                fontSize: 15,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400
            ),
          ),
        ),
        ListTile(
          leading: SvgPicture.asset(AppIcons.passwordIcon),
          title: const Text(
            AppString.password,
            style: TextStyle(
                color: AppColors.C_1D1E20,
                fontSize: 15,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400
            ),
          ),
        ),
        ListTile(
          leading: SvgPicture.asset(AppIcons.bagIcon),
          title: const Text(
            AppString.orders,
            style: TextStyle(
                color: AppColors.C_1D1E20,
                fontSize: 15,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400
            ),
          ),
        ),
        ListTile(
          leading: SvgPicture.asset(AppIcons.walletIcon),
          title: const Text(
            AppString.mycards,
            style: TextStyle(
                color: AppColors.C_1D1E20,
                fontSize: 15,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400
            ),
          ),
        ),
        ListTile(
          leading: SvgPicture.asset(AppIcons.heartDrawerIcon),
          title: const Text(
            AppString.wishlist,
            style: TextStyle(
                color: AppColors.C_1D1E20,
                fontSize: 15,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400
            ),
          ),
        ),
        ListTile(
          leading: SvgPicture.asset(AppIcons.settingsIcon),
          title: const Text(
            AppString.settings,
            style: TextStyle(
                color: AppColors.C_1D1E20,
                fontSize: 15,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400
            ),
          ),
        ),
        SizedBox(height: 100,),
        ListTile(
          leading: SvgPicture.asset(AppIcons.logoutIcon),
          title: const Text(
            AppString.logout,
            style: TextStyle(
                color: AppColors.C_FF5757,
                fontSize: 15,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400
            ),
          ),
          onTap: (){
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
