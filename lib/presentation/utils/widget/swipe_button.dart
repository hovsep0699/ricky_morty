import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SwipeButtonWidget extends StatefulWidget {
  const SwipeButtonWidget({super.key, this.initialValue = false, this.onToggle});
  
  final bool initialValue;

  final void Function(bool)? onToggle;

  @override
  State<SwipeButtonWidget> createState() => SwipeButtonWidgetState();
}

class SwipeButtonWidgetState extends State<SwipeButtonWidget> {
  final ValueNotifier<bool> isOnNotifier = ValueNotifier<bool>(false);
  final ValueNotifier<double> thumbPositionNotifier = ValueNotifier<double>(10.0);
  final double maxOffset = 50.0;

  void _onHorizontalDragUpdate(DragUpdateDetails details) {
    thumbPositionNotifier.value += details.primaryDelta!;
    if (thumbPositionNotifier.value < 0) {
      thumbPositionNotifier.value = 10;
    } else if (thumbPositionNotifier.value > maxOffset) {
      thumbPositionNotifier.value = maxOffset;
    }
  }

  void _onDragEnd(DragEndDetails details) {
    if (thumbPositionNotifier.value > maxOffset / 2) {
      isOnNotifier.value = true;
      thumbPositionNotifier.value = maxOffset;
    } else {
      isOnNotifier.value = false;
      thumbPositionNotifier.value = 10.0;
    }
  }

  void toggleSwitch() {
    isOnNotifier.value = !isOnNotifier.value;
    thumbPositionNotifier.value = isOnNotifier.value ? maxOffset : 10.0;
    widget.onToggle?.call(isOnNotifier.value);
  }
  
  @override
  void initState() {
    super.initState();
    isOnNotifier.value = widget.initialValue;
    thumbPositionNotifier.value = widget.initialValue ? maxOffset : 10.0;
  }

  @override
  void dispose() {
    isOnNotifier.dispose();
    thumbPositionNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleSwitch,
      onHorizontalDragUpdate: _onHorizontalDragUpdate,
      onHorizontalDragEnd: _onDragEnd,
      child: ValueListenableBuilder<bool>(
        valueListenable: isOnNotifier,
        builder: (context, isOn, child) {
          return AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            width: 100,
            height: 50,
            decoration: BoxDecoration(
              color: isOn ? Colors.grey : Colors.grey,
              borderRadius: BorderRadius.circular(25),
            ),
            child: ValueListenableBuilder<double>(
              valueListenable: thumbPositionNotifier,
              builder: (context, thumbPosition, child) {
                return Stack(
                  children: [
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 200),
                      left: thumbPosition,
                      top: 5,
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: isOn ? Colors.white : Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(isOn ? Icons.sunny : Icons.sunny_snowing, color: isOn ?
                        Colors.green[400] :
                        Colors.green),
                      ),
                    ),
                  ],
                );
              },
            ),
          );
        },
      ),
    );
  }
}
