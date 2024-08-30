import 'package:driver_flutter/config/locator/locator.dart';
import 'package:driver_flutter/core/extensions/extensions.dart';
import 'package:driver_flutter/features/auth/presentation/blocs/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_common/core/presentation/buttons/app_primary_button.dart';

class VehicleDetails extends StatelessWidget {
  final LoginState state;
  final GlobalKey<FormState> formKey = GlobalKey();

  VehicleDetails({
    super.key,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    final loginBloc = locator<LoginBloc>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Text(
                    "In order to change these information later you have to contact support",
                    style: context.bodyMedium?.copyWith(color: context.theme.colorScheme.onSurfaceVariant),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    initialValue: state.profileFullEntity?.vehiclePlateNumber,
                    validator: (value) => value?.isEmpty == true ? context.translate.fieldIsRequired : null,
                    onSaved: loginBloc.onPlateNumberChanged,
                    decoration: InputDecoration(
                      hintText: context.translate.vehiclePlateNumber,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    initialValue: state.profileFullEntity?.vehicleProductionYear?.toString(),
                    validator: (value) => value?.isEmpty == true ? context.translate.fieldIsRequired : null,
                    onSaved: (value) => (value?.isNotEmpty ?? false)
                        ? loginBloc.onVehicleProductionYearChanged(int.parse(value!))
                        : null,
                    decoration: InputDecoration(
                      hintText: context.translate.vehicleProductionYear,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  DropdownButtonFormField<String>(
                    value: state.profileFullEntity?.vehicleModelId,
                    items: state.vehicleModels
                        .map(
                          (e) => DropdownMenuItem<String>(
                            value: e.id,
                            child: Text(
                              e.name,
                              style: context.labelLarge,
                            ),
                          ),
                        )
                        .toList(),
                    onChanged: (_) {},
                    onSaved: (newValue) => loginBloc.onVehicleModelIdChanged(newValue),
                    decoration: InputDecoration(
                      hintText: context.translate.vehicleModelAndMake,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  DropdownButtonFormField<String>(
                    value: state.profileFullEntity?.vehicleColorId,
                    items: state.vehicleColors
                        .map(
                          (e) => DropdownMenuItem<String>(
                            value: e.id,
                            child: Text(
                              e.name,
                              style: context.labelLarge,
                            ),
                          ),
                        )
                        .toList(),
                    onChanged: (_) {},
                    onSaved: (newValue) => loginBloc.onVehicleColorIdChanged(newValue),
                    decoration: InputDecoration(
                      hintText: context.translate.vehicleColor,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        AppPrimaryButton(
          onPressed: () {
            if (formKey.currentState?.validate() == true) {
              formKey.currentState?.save();
              loginBloc.onConfirmVehicleDetailsPressed();
            }
          },
          child: Text(context.translate.confirm),
        )
      ],
    );
  }
}
