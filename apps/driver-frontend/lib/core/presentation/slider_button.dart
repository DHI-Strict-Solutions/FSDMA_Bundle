import 'dart:math';

import 'package:driver_flutter/core/extensions/extensions.dart';
import 'package:driver_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';

class SliderButton extends StatefulWidget {
  final double height = 45;
  final animationDuration = const Duration(milliseconds: 300);
  final String? text;
  final Function() onSlided;
  final bool enabled;
  final SliderButtonController? controller;

  const SliderButton({
    required this.onSlided,
    this.text,
    this.controller,
    this.enabled = true,
    super.key,
  });

  @override
  State<SliderButton> createState() => _SliderButtonState();
}

class _SliderButtonState extends State<SliderButton> with SingleTickerProviderStateMixin {
  double _sliderRelativePosition = 0.0; // values 0 -> 1
  double _startedDraggingAtX = 0.0;
  late final AnimationController _animationController;
  late final Animation _sliderAnimation;

  @override
  void initState() {
    super.initState();
    if (widget.controller != null) {
      widget.controller!.addListener(reset);
    }
    _animationController = AnimationController(
      vsync: this,
      duration: widget.animationDuration,
    );
    _sliderAnimation = CurveTween(curve: Curves.easeInQuad).animate(_animationController);

    _animationController.addListener(() {
      setState(() {
        _sliderRelativePosition = _sliderAnimation.value;
      });
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void reset() {
    _animationController.reverse(from: _sliderRelativePosition);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: widget.enabled ? ColorPalette.primary40 : Theme.of(context).disabledColor,
      ),
      child: LayoutBuilder(
        builder: (_, BoxConstraints constraints) {
          final sliderRadius = widget.height / 2;
          final sliderMaxX = constraints.maxWidth - 2 * sliderRadius;
          final sliderPosX = sliderMaxX * _sliderRelativePosition;
          return Stack(
            children: [
              _buildBackground(width: constraints.maxWidth, backgroundSplitX: sliderPosX + sliderRadius),
              _buildText(),
              _buildSlider(sliderMaxX: sliderMaxX, sliderPositionX: sliderPosX),
            ],
          );
        },
      ),
    );
  }

  Widget _buildBackground({required double width, required double backgroundSplitX}) {
    return Row(
      children: [
        SizedBox(
          height: widget.height,
          width: backgroundSplitX,
        ),
        SizedBox(
          height: widget.height,
          width: width - backgroundSplitX,
        ),
      ],
    );
  }

  Widget _buildText() {
    if (widget.text == null) {
      return const SizedBox();
    }
    return SizedBox(
      height: widget.height,
      child: Center(
        child: Text(
          widget.text!,
          style: context.titleSmall?.copyWith(color: ColorPalette.neutral99),
        ),
      ),
    );
  }

  Widget _buildSlider({required double sliderMaxX, required double sliderPositionX}) {
    return Positioned(
      left: sliderPositionX,
      child: GestureDetector(
        onHorizontalDragStart: (start) {
          if (!widget.enabled) {
            return;
          }
          _startedDraggingAtX = sliderPositionX;
          _animationController.stop();
        },
        onHorizontalDragUpdate: (update) {
          if (!widget.enabled) {
            return;
          }
          final newSliderPositionX = _startedDraggingAtX + update.localPosition.dx;
          final newSliderRelativePosition = newSliderPositionX / sliderMaxX;
          setState(() {
            _sliderRelativePosition = max(0, min(1, newSliderRelativePosition));
          });
        },
        onHorizontalDragEnd: (end) {
          if (!widget.enabled) {
            return;
          }
          if (_sliderRelativePosition == 1.0) {
            widget.onSlided();
            reset();
          } else {
            reset();
          }
        },
        child: Container(
          height: widget.height,
          width: widget.height,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: ColorPalette.primary99,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Assets.images.blueArrow.image(),
        ),
      ),
    );
  }
}

class SliderButtonController extends ChangeNotifier {
  void reset() {
    notifyListeners();
  }
}
