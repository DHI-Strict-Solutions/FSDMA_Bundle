import 'package:flutter/material.dart';

class DesktopLayoutDelegate extends MultiChildLayoutDelegate {
  DesktopLayoutDelegate();

  static String mapLayoutId = 'map';
  static String bottomSheetLayoutId = 'bottom_sheet';
  static String sidebarLayoutId = 'sidebar';
  static String navbarId = 'navbar';
  static String searchRadiusButtonId = 'search_radius';
  static String myLocationButtonId = 'my_location';
  static String navigateButtonId = 'navigate_button'; // NOT USED YET

  @override
  void performLayout(Size size) {
    final bottomSheetSize = layoutChild(
      bottomSheetLayoutId,
      BoxConstraints(
        maxWidth: size.width,
      ),
    );
    positionChild(bottomSheetLayoutId, Offset(0, size.height - bottomSheetSize.height));
    final searchRadiusButtonSize = layoutChild(searchRadiusButtonId, const BoxConstraints());

    final sidebarSize = layoutChild(sidebarLayoutId, BoxConstraints(maxWidth: 400, maxHeight: size.height));
    positionChild(sidebarLayoutId, Offset(size.width - 400, 0));
    positionChild(
      searchRadiusButtonId,
      Offset(
        (size.width - searchRadiusButtonSize.width - sidebarSize.width) / 2,
        size.height - bottomSheetSize.height - 80,
      ),
    );
    if (bottomSheetSize.height < 50) {
      layoutChild(
        mapLayoutId,
        BoxConstraints(
          maxWidth: size.width - 400,
          maxHeight: size.height,
        ),
      );
      positionChild(mapLayoutId, Offset.zero);
      layoutChild(navbarId, const BoxConstraints(maxWidth: 400));
      positionChild(
        navbarId,
        Offset(size.width - 400, 80),
      );
      layoutChild(myLocationButtonId, const BoxConstraints());
      positionChild(
        myLocationButtonId,
        Offset(
          size.width - 60,
          size.height - 60,
        ),
      );
    } else {
      layoutChild(
        mapLayoutId,
        BoxConstraints(
          maxWidth: size.width,
          maxHeight: size.height - bottomSheetSize.height + 20,
        ),
      );
      positionChild(mapLayoutId, Offset.zero);
      layoutChild(navbarId, BoxConstraints(maxWidth: size.width));
      positionChild(
        navbarId,
        const Offset(0, 80),
      );
      final myLocationSize = layoutChild(myLocationButtonId, const BoxConstraints());
      positionChild(
        myLocationButtonId,
        Offset(
          size.width - myLocationSize.width,
          size.height - bottomSheetSize.height - myLocationSize.height,
        ),
      );
    }
  }

  @override
  bool shouldRelayout(DesktopLayoutDelegate oldDelegate) {
    return true;
  }
}
