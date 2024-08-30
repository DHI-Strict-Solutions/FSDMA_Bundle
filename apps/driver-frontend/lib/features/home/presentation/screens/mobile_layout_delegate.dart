import 'package:flutter/material.dart';

class MobileLayoutDelegate extends MultiChildLayoutDelegate {
  final bool isMapFull;

  MobileLayoutDelegate({
    required this.isMapFull,
  });

  static String mapLayoutId = 'map';
  static String cardLayoutId = 'card';
  static String navbarId = 'navbar';
  static String searchRadiusButtonId = 'search_radius';
  static String myLocationButtonId = 'my_location';
  static String navigateButtonId = 'navigate_button';

  @override
  void performLayout(Size size) {
    final cardSize = layoutChild(
      cardLayoutId,
      BoxConstraints(
        maxWidth: size.width,
        maxHeight: size.height,
      ),
    );
    final searchRadiusButtonSize = layoutChild(
      searchRadiusButtonId,
      const BoxConstraints(),
    );

    final myLocationButtonSize = layoutChild(myLocationButtonId, const BoxConstraints());
    final navigationButtonSize = layoutChild(navigateButtonId, const BoxConstraints());
    positionChild(
      navigateButtonId,
      Offset(
        size.width - navigationButtonSize.width - 16,
        size.height - cardSize.height - navigationButtonSize.height - 16,
      ),
    );
    positionChild(
      myLocationButtonId,
      Offset(
        size.width - myLocationButtonSize.width,
        size.height -
            cardSize.height -
            myLocationButtonSize.height -
            navigationButtonSize.height -
            (navigationButtonSize.height > 0 ? 16 : 0),
      ),
    );

    if (cardSize.height < size.height) {
      positionChild(
        cardLayoutId,
        Offset(0, size.height - cardSize.height),
      );
      layoutChild(
        mapLayoutId,
        BoxConstraints(
          maxWidth: size.width,
          maxHeight: size.height - (isMapFull ? 0 : (cardSize.height - 16)),
        ),
      );
      positionChild(mapLayoutId, Offset.zero);
      final navBarSize = layoutChild(navbarId, BoxConstraints(maxWidth: size.width - 32));
      positionChild(
        navbarId,
        const Offset(
          16,
          16,
        ),
      );
      positionChild(
        searchRadiusButtonId,
        Offset(
          (size.width - searchRadiusButtonSize.width) - 16,
          navBarSize.height + 32,
        ),
      );
    } else {
      layoutChild(
        navbarId,
        const BoxConstraints(
          maxWidth: 0,
          maxHeight: 0,
        ),
      );
      positionChild(
        navbarId,
        const Offset(
          16,
          16,
        ),
      );
      positionChild(
        searchRadiusButtonId,
        const Offset(
          0,
          0,
        ),
      );
      layoutChild(
        mapLayoutId,
        const BoxConstraints(
          maxWidth: 0,
          maxHeight: 0,
        ),
      );
      positionChild(mapLayoutId, Offset.zero);

      positionChild(cardLayoutId, Offset.zero);
    }
  }

  @override
  bool shouldRelayout(MobileLayoutDelegate oldDelegate) {
    return true;
  }
}
