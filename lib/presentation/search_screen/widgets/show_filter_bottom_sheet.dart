import 'dart:ui';

import 'package:aire_velo_bearings/application/search_bloc/search_bloc.dart';
import 'package:aire_velo_bearings/core/constants/font_constants.dart';
import 'package:aire_velo_bearings/core/constants/string_constant.dart';
import 'package:aire_velo_bearings/core/router/app_router.dart';
import 'package:aire_velo_bearings/core/utils/math_utils.dart';
import 'package:aire_velo_bearings/infrastructure/filter_option_list_dto/filter_option_list_dto.dart';
import 'package:aire_velo_bearings/injection.dart';
import 'package:aire_velo_bearings/presentation/common/widgets/base_text.dart';
import 'package:aire_velo_bearings/presentation/common/widgets/center_loading_indicator.dart';
import 'package:aire_velo_bearings/presentation/core/enum.dart';
import 'package:aire_velo_bearings/presentation/core/styles/app_colors.dart';
import 'package:aire_velo_bearings/presentation/core/widgets/buttons/common_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class ShowFilterBottomSheet extends StatelessWidget {
  ShowFilterBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container());
  }

  // static double _priceValue = 50;
  static RangeValues _currentRange = const RangeValues(0, 100);

  static void bottomSheet(
    BuildContext context, {
    required SearchBloc searchBloc,
  }) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      backgroundColor: AppColors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return BlocProvider.value(
          value: searchBloc,
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              return StatefulBuilder(
                builder: (context, setState) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: getSize(16),
                      vertical: getSize(30),
                    ),
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
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _priceView(setState),
                                Gap(getSize(20)),

                                // Category
                                (state.isFilterLoading)
                                    ? CenterLoadingIndicator(isOnlyLoader: true)
                                    : filterView(context, state),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
        );
      },
    );
  }

  static Widget filterView(BuildContext context, SearchState state) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildDropdown(
          title: StringConstant.filterByCategory,
          hint: "Any Category",
          items: state.categoryList,
          selectedSlug: state.filters?.category,
          onChanged: (value) {
            print("onChanged calleld");
            context.read<SearchBloc>().add(
              SearchEvent.categoryChanged(value: value?.slug ?? ''),
            );
          },
        ),
        Gap(getSize(16)),
        // Brand
        _buildDropdown(
          title: StringConstant.filterByBrand,
          hint: "Any Brand",
          items: state.brandList,
          selectedSlug: state.filters?.filter_brand,
          onChanged: (value) {
            print("onChanged calleld");
            context.read<SearchBloc>().add(
              SearchEvent.filterChanged(
                attribute: FilterAttribute.brand,
                value: value?.slug ?? '',
              ),
            );
          },
        ),
        Gap(getSize(16)),
        // Dimensions
        _buildDropdown(
          title: StringConstant.filterByDimensions,
          hint: "Any Dimensions",
          items: state.dimensionList,
          selectedSlug: state.filters?.filter_dimensions,
          onChanged: (value) {
            context.read<SearchBloc>().add(
              SearchEvent.filterChanged(
                attribute: FilterAttribute.dimension,
                value: value?.slug ?? '',
              ),
            );
          },
        ),
        Gap(getSize(16)),
        // Inner Diameter
        _buildDropdown(
          title: StringConstant.filterByInnerDiameter,
          hint: "Any Inner Diameter",
          items: state.iDList,
          selectedSlug: state.filters?.filter_id,
          onChanged: (value) {
            context.read<SearchBloc>().add(
              SearchEvent.filterChanged(
                attribute: FilterAttribute.id,
                value: value?.slug ?? '',
              ),
            );
          },
        ),
        Gap(getSize(16)),
        // Outer Diameter
        _buildDropdown(
          title: StringConstant.filterByOuterDiameter,
          hint: "Any Outer Diameter",
          items: state.oDList,
          selectedSlug: state.filters?.filter_od,
          onChanged: (value) {
            context.read<SearchBloc>().add(
              SearchEvent.filterChanged(
                attribute: FilterAttribute.od,
                value: value?.slug ?? '',
              ),
            );
          },
        ),
        Gap(getSize(16)),
        // Depth
        _buildDropdown(
          title: StringConstant.filterByDepth,
          hint: "Any Depth",
          items: state.depthList,
          selectedSlug: state.filters?.filter_depth,
          onChanged: (value) {
            context.read<SearchBloc>().add(
              SearchEvent.filterChanged(
                attribute: FilterAttribute.depth,
                value: value?.slug ?? '',
              ),
            );
          },
        ),
        Gap(getSize(16)),
        // Chamfer Angles
        _buildDropdown(
          title: StringConstant.filterByChamferAngles,
          hint: "Any Chamfer Angles",
          items: state.anglesList,
          selectedSlug: state.filters?.filter_chamfers_angles,
          onChanged: (value) {
            context.read<SearchBloc>().add(
              SearchEvent.filterChanged(
                attribute: FilterAttribute.chamfersAngles,
                value: value?.slug ?? '',
              ),
            );
          },
        ),
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
                    context.read<SearchBloc>().add(
                      SearchEvent.clearAllFilters(),
                    );
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
                    // Navigator.pop(context);
                    context.read<SearchBloc>().add(SearchEvent.submitFilter());
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
    );
  }

  static Widget _priceView(setState) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
        RangeSlider(
          // value: _priceValue,
          values: _currentRange,
          min: 0,
          max: 100,
          activeColor: AppColors.primary,
          inactiveColor: AppColors.lightGrey,
          onChanged: (values) {
            setState(() {
              _currentRange = values;
            });
            // setState(() => _priceValue = value);
          },
        ),
        BaseText(
          text:
              "${StringConstant.price}: £${_currentRange.start.toStringAsFixed(0)} - £${_currentRange.end.toStringAsFixed(0)}",
          fontSize: 14,
        ),
      ],
    );
  }

  static Widget _buildDropdown({
    required String hint,
    required List<FilterOptionListDTO> items,
    required String title,

    required String? selectedSlug,
    ValueChanged<FilterOptionListDTO?>? onChanged,
  }) {
    FilterOptionListDTO? selectedItem;
    final index = items.indexWhere((e) => e.slug == selectedSlug);
    if (index != -1) {
      selectedItem = items[index];
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        BaseText(text: title, fontSize: 14),
        Gap(getSize(8)),
        DropdownButtonFormField<FilterOptionListDTO>(
          initialValue: selectedItem,
          menuMaxHeight: getSize(200),
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            isDense: true,
            contentPadding: EdgeInsets.symmetric(
              horizontal: getSize(12),
              vertical: getSize(10),
            ),
          ),
          dropdownColor: AppColors.white,
          hint: BaseText(text: hint),
          isDense: true,
          items: items
              .map(
                (e) => DropdownMenuItem(
                  value: e,
                  child: Container(
                    width: getSize(275),
                    padding: EdgeInsets.only(
                      left: (e.is_parent == true) ? getSize(0) : getSize(10),
                    ),
                    child: BaseText(
                      text: e.name ?? '',
                      maxLines: 2,
                      fontSize: 14,
                      fontWeight: (e.is_parent == true)
                          ? FontWeight.w600
                          : null,
                    ),
                  ),
                ),
              )
              .toList(),
          onChanged: onChanged,
        ),
      ],
    );
  }
}
