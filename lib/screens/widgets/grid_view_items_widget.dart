import 'package:flutter/material.dart';
import 'package:m2_lesson7_hw/model/home_item_model.dart';
import 'package:m2_lesson7_hw/utils/app_colors.dart';
import 'package:m2_lesson7_hw/utils/app_images.dart';

class GridWiewItemsWidget extends StatefulWidget {
  final HomeItems mItems;
  const GridWiewItemsWidget({Key? key, required this.mItems}) : super(key: key);

  @override
  State<GridWiewItemsWidget> createState() => _GridWiewItemsWidgetState();
}

class _GridWiewItemsWidgetState extends State<GridWiewItemsWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Image.asset(widget.mItems.image),
            Positioned(
              top: 4,
              right: 4,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.C_F5F6FA
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        widget.mItems.isLike = !widget.mItems.isLike;
                      });
                    },
                    child: Icon(
                      !widget.mItems.isLike
                          ? Icons.favorite_border
                          : Icons.favorite,
                      color: !widget.mItems.isLike
                          ? AppColors.white
                          : AppColors.C_FF5757,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 5,),
        Text(
          widget.mItems.firm,
          style: TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
            color: AppColors.C_1D1E20
          ),
        ),
        SizedBox(height: 5,),
        Text(
          widget.mItems.coast,
          style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.normal,
              color: AppColors.C_1D1E20
          ),
        ),
      ],
    );
  }
}
