import 'package:aire_velo_bearings/core/constants/font_constants.dart';
import 'package:aire_velo_bearings/core/constants/string_constant.dart';
import 'package:aire_velo_bearings/core/utils/math_utils.dart';
import 'package:aire_velo_bearings/presentation/common/widgets/base_text.dart';
import 'package:aire_velo_bearings/presentation/core/styles/app_colors.dart';
import 'package:aire_velo_bearings/presentation/core/widgets/buttons/common_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ShowFilterBottomSheet extends StatelessWidget {
  const ShowFilterBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container());
  }

  static void bottomSheet(BuildContext context) {
    double priceValue = 50;

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getSize(16),
                vertical: getSize(30),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: BaseText(
                        text: StringConstant.filter,
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                        fontFamily: FontConstant.jost,
                      ),
                    ),
                    Gap(getSize(10)),
                    BaseText(
                      text: StringConstant.filterByPrice,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                    Gap(getSize(8)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BaseText(text: "£0"),
                        BaseText(text: "£100"),
                      ],
                    ),
                    Slider(
                      value: priceValue,
                      min: 0,
                      max: 100,
                      activeColor: AppColors.primary,
                      inactiveColor: AppColors.lightGrey,
                      onChanged: (value) {
                        setState(() => priceValue = value);
                      },
                    ),
                    BaseText(
                      text:
                          "${StringConstant.price}: £${priceValue.toStringAsFixed(0)} - £100",
                      fontSize: 14,
                    ),
                    Gap(getSize(20)),
                    // Brand
                    BaseText(text: StringConstant.filterByBrand),
                    Gap(getSize(8)),
                    _buildDropdown("Any Brand", ["SKF", "NSK", "FAG", "NTN"]),
                    Gap(getSize(16)),
                    // Dimensions
                    BaseText(text: StringConstant.filterByDimensions),
                    Gap(getSize(8)),
                    _buildDropdown("Any Dimensions", [
                      "10x20",
                      "15x30",
                      "20x40",
                    ]),
                    Gap(getSize(16)),
                    // Inner Diameter
                    BaseText(text: StringConstant.filterByInnerDiameter),
                    Gap(getSize(8)),
                    _buildDropdown("Any Inner Diameter", [
                      "10mm",
                      "15mm",
                      "20mm",
                    ]),
                    Gap(getSize(16)),
                    // Outer Diameter
                    BaseText(text: StringConstant.filterByOuterDiameter),
                    Gap(getSize(8)),
                    _buildDropdown("Any Outer Diameter", [
                      "20mm",
                      "30mm",
                      "40mm",
                    ]),
                    Gap(getSize(16)),
                    // Depth
                    BaseText(text: StringConstant.filterByDepth),
                    Gap(getSize(8)),
                    _buildDropdown("Any Depth", ["5mm", "10mm", "15mm"]),
                    Gap(getSize(16)),
                    // Chamfer Angles
                    BaseText(text: StringConstant.filterByChamferAngles),
                    Gap(getSize(8)),
                    _buildDropdown("Any Chamfer Angles", ["15°", "30°", "45°"]),
                    Gap(getSize(24)),
                    // Buttons
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: getSize(14)),
                      child: Row(
                        children: [
                          Expanded(
                            child: CommonButton(
                              onPressed: () {
                                // Clear filters logic
                                Navigator.pop(context);
                              },
                              backgroundColor: AppColors.transparent,
                              borderColor: AppColors.primary,
                              buttonTextColor: AppColors.primary,
                              buttonText: StringConstant.clearFilters,
                            ),
                          ),
                          Gap(getSize(12)),
                          Expanded(
                            child: CommonButton(
                              onPressed: () {
                                // Apply filters logic
                                Navigator.pop(context);
                              },
                              backgroundColor: AppColors.primary,
                              buttonFontWeight: FontWeight.w600,
                              buttonText: StringConstant.search,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  static Widget _buildDropdown(String hint, List<String> items) {
    return DropdownButtonFormField<String>(
      isExpanded: true,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        isDense: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      ),
      hint: BaseText(text: hint),
      items: items
          .map(
            (e) => DropdownMenuItem<String>(
              value: e,
              child: BaseText(text: e),
            ),
          )
          .toList(),
      onChanged: (value) {},
    );
  }
}
