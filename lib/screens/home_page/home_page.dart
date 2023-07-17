import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:m2_lesson7_hw/model/brand_item_model.dart';
import 'package:m2_lesson7_hw/model/home_item_model.dart';
import 'package:m2_lesson7_hw/screens/widgets/brand_items_widget.dart';
import 'package:m2_lesson7_hw/screens/widgets/drawers.dart';
import 'package:m2_lesson7_hw/screens/widgets/grid_view_items_widget.dart';
import 'package:m2_lesson7_hw/screens/widgets/text_field_widget.dart';
import 'package:m2_lesson7_hw/utils/app_colors.dart';
import 'package:m2_lesson7_hw/utils/app_icons.dart';
import 'package:m2_lesson7_hw/utils/app_images.dart';
import 'package:m2_lesson7_hw/utils/app_string.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: Drawer(
          child: Drawers(),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, top: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      _scaffoldKey.currentState!.openDrawer();
                    },
                    child: Stack(
                        alignment: AlignmentDirectional.center,
                        children: <Widget>[
                          Image.asset(AppImages.ellips),
                          SvgPicture.asset(AppIcons.menuIcon)
                        ]),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Stack(
                        alignment: AlignmentDirectional.center,
                        children: <Widget>[
                          Image.asset(AppImages.ellips),
                          SvgPicture.asset(AppIcons.bagIcon)
                        ]),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                AppString.hemendra,
                style: TextStyle(
                  color: AppColors.C_1D1E20,
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
              ),
              // SizedBox(height: 5,),
              Text(
                AppString.laza,
                style: TextStyle(
                    color: AppColors.C_8F959E,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 20,
              ),
              TextFieldWidget(),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    AppString.chooseBrand,
                    style: TextStyle(
                      fontStyle: FontStyle.normal,
                      color: AppColors.C_1D1E20,
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        AppString.viewAll,
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            color: AppColors.C_8F959E,
                            fontSize: 13,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: BrandItems.brandItems.length,
                  itemBuilder: (BuildContext context, int index) {
                    return BrandItemsWidget(
                        items: BrandItems.brandItems[index]);
                  },
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    AppString.newArraival,
                    style: TextStyle(
                      fontStyle: FontStyle.normal,
                      color: AppColors.C_1D1E20,
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        AppString.viewAll,
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            color: AppColors.C_8F959E,
                            fontSize: 13,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Expanded(
                child: GridView.builder(
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.only(right: 20),
                  itemCount: HomeItems.homeItems.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 3 / 5.5,
                      mainAxisSpacing: 19,
                      crossAxisSpacing: 15),
                  itemBuilder: (BuildContext context, int index) {
                    return GridWiewItemsWidget(
                      mItems: HomeItems.homeItems[index],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
