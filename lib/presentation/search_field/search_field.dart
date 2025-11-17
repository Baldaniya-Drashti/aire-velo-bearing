import 'package:aire_velo_bearings/core/constants/string_constant.dart';
import 'package:aire_velo_bearings/presentation/core/styles/app_colors.dart';
import 'package:aire_velo_bearings/presentation/core/widgets/inputs/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'dart:async';

/* 
class SearchField extends StatelessWidget {
  final FocusNode? focusNode;
  final TextEditingController? controller;
  final Function(String)? onChanged;
  const SearchField({
    super.key,
    this.controller,
    this.focusNode,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      readOnly: true,
      onTap: () {
        context.router.push(PageRouteInfo(SearchScreen.name));
      },
      hintText: StringConstant.search,
      prefixIcon: Icon(Icons.search, color: AppColors.lightGrey),
      suffixIcon: Icon(Icons.filter_alt, color: AppColors.grey),
      onChanged: onChanged,
      controller: controller,
      focusNode: focusNode,
    );
  }
}
 */

class SearchField extends StatefulWidget {
  const SearchField({
    super.key,
    this.delay = const Duration(milliseconds: 500),
    required this.onSearch,
    this.hintText,
    this.labelText,
    this.labelStyle,
    this.isShowLabel = true,
    this.focusNode,
    this.initialValue,
    this.onFilter,
  });
  final String? initialValue;
  final Duration delay;
  final Function(String query) onSearch;
  final String? hintText;
  final TextStyle? labelStyle;
  final String? labelText;
  final bool isShowLabel;
  final VoidCallback? onFilter;
  final FocusNode? focusNode;

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  Timer? _debounce;

  void _onSearchChanged(String query) {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(widget.delay, () {
      /// Use this to Hide keyboard after refresh the
      // FocusManager.instance.primaryFocus?.unfocus();
      widget.onSearch(query);
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      initialValue: widget.initialValue,
      prefixIcon: Icon(Icons.search, color: AppColors.grey),
      onChanged: _onSearchChanged,
      hintText: widget.hintText ?? StringConstant.search,
      suffixIcon: GestureDetector(
        onTap: widget.onFilter,
        child: Icon(Icons.filter_alt, color: AppColors.grey),
      ),
      focusNode: widget.focusNode,
    );
  }

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }
}
