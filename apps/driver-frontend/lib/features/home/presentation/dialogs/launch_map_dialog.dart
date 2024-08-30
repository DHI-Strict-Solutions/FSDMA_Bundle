import 'package:driver_flutter/core/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_common/core/entities/place.dart';
import 'package:flutter_common/core/presentation/app_menu_item.dart';
import 'package:flutter_common/core/presentation/buttons/app_bordered_button.dart';
import 'package:flutter_common/core/presentation/responsive_dialog/app_responsive_dialog.dart';
import 'package:ionicons/ionicons.dart';
import 'package:map_launcher/map_launcher.dart';

class LaunchMapDialog extends StatefulWidget {
  final PlaceEntity place;

  const LaunchMapDialog({
    super.key,
    required this.place,
  });

  @override
  State<LaunchMapDialog> createState() => _LaunchMapDialogState();
}

class _LaunchMapDialogState extends State<LaunchMapDialog> {
  Future<List<AvailableMap>> maps = MapLauncher.installedMaps;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppResponsiveDialog(
      type: context.responsive(
        DialogType.bottomSheet,
        xl: DialogType.dialog,
      ),
      header: (
        Ionicons.navigate_circle,
        "Launch Map",
        "Use one of the installed maps to navigate to the destined location",
      ),
      primaryButton: AppBorderedButton(
        onPressed: () => Navigator.pop(context),
        title: "Cancel",
      ),
      onBackPressed: () => Navigator.of(context).pop(),
      child: FutureBuilder(
        future: maps,
        builder: (context, snapshot) {
          if (snapshot.data?.isEmpty == true) {
            return const Center(
              child: Text("No maps installed"),
            );
          }
          return ListView.separated(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            itemCount: snapshot.data?.length ?? 0,
            separatorBuilder: (context, index) => const SizedBox(height: 8),
            itemBuilder: (context, index) {
              final map = snapshot.data?[index];
              return AppMenuItem(
                onPressed: () async {
                  Navigator.pop(context);
                  await map?.showMarker(
                    coords: Coords(
                      widget.place.latLng2.latitude,
                      widget.place.latLng2.longitude,
                    ),
                    title: widget.place.address,
                  );
                },
                icon: Ionicons.map,
                title: map?.mapName ?? '',
              );
            },
          );
        },
      ),
    );
  }
}
