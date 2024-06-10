import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
class BaseAppBar {
  static AppBar baseAppBar(
    context, {
    List<Widget>? action,
    IconThemeData? actionsIconTheme,
    bool automaticallyImplyLeading = true,
    Color? backgroundColor,
    PreferredSizeWidget? bottom,
    double bottomOpacity = 1.0,
    bool? centerTitle,
    Clip? clipBehavior,
    double? elevation,
    bool excludeHeaderSemantics = false,
    Widget? flexibleSpace,
    bool forceMaterialTransparency = false,
    Color? foregroundColor,
    IconThemeData? iconTheme,
    Widget? title,
  }) {
    return AppBar(
      actions: action,
      title: title,
      actionsIconTheme: actionsIconTheme,
      automaticallyImplyLeading: automaticallyImplyLeading,
      backgroundColor: backgroundColor,
      bottom: bottom,
      bottomOpacity: bottomOpacity,
      centerTitle: centerTitle,
      clipBehavior: clipBehavior,
      elevation: elevation,
      excludeHeaderSemantics: excludeHeaderSemantics,
      flexibleSpace: flexibleSpace,
      forceMaterialTransparency: forceMaterialTransparency,
      foregroundColor: foregroundColor,
      iconTheme: iconTheme,
    );
  }
}
